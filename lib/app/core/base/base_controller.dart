import 'dart:async';

import 'package: myGetxArchitecture/app/data/repository/about/about_repository.dart';
import 'package: myGetxArchitecture/app/data/repository/calculation/GalvanizingCostEstimation/galvanizingCostEstimation_repository.dart';
import 'package: myGetxArchitecture/app/data/repository/calculation/GalvanizingKettleWearEstimation/GalvanizingKettleWearEstimation_repository.dart';
import 'package: myGetxArchitecture/app/data/repository/calculation/ZincCoatingLifeEstimation/ZincCoatingLifeEstimation_repository.dart';
import 'package: myGetxArchitecture/app/data/repository/calculation/ZincConsumptionCalculation/ZincConsumptionCalculation_repository.dart';
import 'package: myGetxArchitecture/app/data/repository/lang/lang_repository.dart';
import 'package: myGetxArchitecture/app/data/repository/link/link_repository.dart';

import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '/app/core/model/page_state.dart';
import '/app/network/exceptions/api_exception.dart';
import '/app/network/exceptions/app_exception.dart';
import '/app/network/exceptions/json_format_exception.dart';
import '/app/network/exceptions/network_exception.dart';
import '/app/network/exceptions/not_found_exception.dart';
import '/app/network/exceptions/service_unavailable_exception.dart';
import '/app/network/exceptions/unauthorize_exception.dart';
import '/flavors/build_config.dart';

abstract class BaseController extends GetxController {
  final Logger logger = BuildConfig.instance.config.logger;

  // AppLocalizations get appLocalization => AppLocalizations.of(Get.context!);

  final logoutController = false.obs;

  //Reload the page
  final _refreshController = false.obs;

  refreshPage(bool refresh) => _refreshController(refresh);

  //Controls page state
  final _pageSateController = PageState.DEFAULT.obs;

  PageState get pageState => _pageSateController.value;

  updatePageState(PageState state) => _pageSateController(state);

  resetPageState() => _pageSateController(PageState.DEFAULT);

  showLoading() => updatePageState(PageState.LOADING);

  hideLoading() => resetPageState();

  final _messageController = ''.obs;

  String get message => _messageController.value;

  showMessage(String msg) => _messageController(msg);

  final _errorMessageController = ''.obs;

  String get errorMessage => _errorMessageController.value;

  showErrorMessage(String msg) {
    _errorMessageController(msg);
  }

  final _successMessageController = ''.obs;

  String get successMessage => _messageController.value;

  showSuccessMessage(String msg) => _successMessageController(msg);

  // ignore: long-parameter-list
  dynamic callDataService<T>(
    Future<T> future, {
    Function(Exception exception)? onError,
    Function(T response)? onSuccess,
    Function? onStart,
    Function? onComplete,
  }) async {
    Exception? _exception;

    onStart == null ? showLoading() : onStart();

    try {
      final T response = await future;

      if (onSuccess != null) onSuccess(response);

      onComplete == null ? hideLoading() : onComplete();

      return response;
    } on ServiceUnavailableException catch (exception) {
      _exception = exception;
      showErrorMessage(exception.message);
    } on UnauthorizedException catch (exception) {
      _exception = exception;
      showErrorMessage(exception.message);
    } on TimeoutException catch (exception) {
      _exception = exception;
      showErrorMessage(exception.message ?? 'Timeout exception');
    } on NetworkException catch (exception) {
      _exception = exception;
      showErrorMessage(exception.message);
    } on JsonFormatException catch (exception) {
      _exception = exception;
      showErrorMessage(exception.message);
    } on NotFoundException catch (exception) {
      _exception = exception;
      showErrorMessage(exception.message);
    } on ApiException catch (exception) {
      _exception = exception;
    } on AppException catch (exception) {
      _exception = exception;
      showErrorMessage(exception.message);
    } catch (error) {
      _exception = AppException(message: "$error");
      logger.e("Controller>>>>>> error $error");
    }

    if (onError != null) onError(_exception);

    onComplete == null ? hideLoading() : onComplete();
  }

  @override
  void onClose() {
    _messageController.close();
    _refreshController.close();
    _pageSateController.close();
    super.onClose();
  }

  // must be not deleted from memory when current page closed
  final AboutRepository _aboutRepository =
      Get.find(tag: (AboutRepository).toString());
  final LangRepository _langRepository =
      Get.find(tag: (LangRepository).toString());
  final LinkRepository _linkRepository =
      Get.find(tag: (LinkRepository).toString());
  final GalvanizingKettleWearEstimationRepository
      _kettleWearEstimationRepository =
      Get.find(tag: (GalvanizingKettleWearEstimationRepository).toString());
  final GalvanizingCostEstimationRepository _costEstimationRepository =
      Get.find(tag: (GalvanizingCostEstimationRepository).toString());
  final ZincConsumptionCalculationRepository _zincConsumptionRepository =
      Get.find(tag: (ZincConsumptionCalculationRepository).toString());
       final ZincCoatingLifeEstimationRepository _coatingLifeEstimationRepository =
      Get.find(tag: (ZincCoatingLifeEstimationRepository).toString());
}
