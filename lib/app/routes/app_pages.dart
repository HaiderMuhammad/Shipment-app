import 'package:get/get.dart';
import 'package:shipment_app/app/modules/alert/bindings/alert_bindings.dart';
import 'package:shipment_app/app/modules/alert/views/alert_view.dart';
import 'package:shipment_app/app/modules/auth/bindings/auth_bindings.dart';
import 'package:shipment_app/app/modules/auth/views/forget_pass_view/forget_pass_view.dart';
import 'package:shipment_app/app/modules/auth/views/login/login_view.dart';
import 'package:shipment_app/app/modules/auth/views/register/register_view.dart';
import 'package:shipment_app/app/modules/auth/views/reset_password/reset_pass_view.dart';
import 'package:shipment_app/app/modules/auth/views/verify/verify_view.dart';
import 'package:shipment_app/app/modules/dashboard/bindings/dashboardBinding.dart';
import 'package:shipment_app/app/modules/home/bindings/home_binding.dart';
import 'package:shipment_app/app/modules/home/views/home_view.dart';
import 'package:shipment_app/app/modules/new_order/bindings/newOrder_binding.dart';
import 'package:shipment_app/app/modules/new_order/views/newOrder_view.dart';
import 'package:shipment_app/app/modules/profile/bindings/profile_binding.dart';
import 'package:shipment_app/app/modules/profile/views/profile_view.dart';
import 'package:shipment_app/app/modules/splash_screen/bindings/splash_binding.dart';
import 'package:shipment_app/app/modules/splash_screen/view/splash_view.dart';
import '../modules/dashboard/views/dashboard1_view.dart';
import '../modules/navbar/bindings/navbar_binding.dart';
import '../modules/navbar/views/navbar_view.dart';
part './app_routes.dart';


class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.splash, page: () => const SplashView(), binding: SplashBinding()),
    GetPage(
        name: AppRoutes.dashBoard, page: () => const DashBord1View(), binding: DashboardBinding()),
    GetPage(
        name: AppRoutes.login, page: () => const LoginView(), binding: AuthBinding()),
    GetPage(
        name: AppRoutes.register, page: () => const SignUpView(), binding: AuthBinding()),
    GetPage(
        name: AppRoutes.forgetPassword, page: () => const ForgetPassView(), binding: AuthBinding()),
    GetPage(
        name: AppRoutes.resetPassword, page: () => const ResetPassView(), binding: AuthBinding()),
    GetPage(
        name: AppRoutes.verify, page: () => const VerifyView(), binding: AuthBinding()),
    GetPage(
        name: AppRoutes.navBar, page: () => NavBarView(), binding: NavBarBinding()),
    GetPage(
        name: AppRoutes.home, page: () => const HomeView(), binding: HomeBinding()),
    GetPage(
        name: AppRoutes.alert, page: () => const AlertView(), binding: AlertBinding()),
    GetPage(
        name: AppRoutes.newOrder, page: () => const NewOrderView(), binding: NewOrderBinding()),
    GetPage(
        name: AppRoutes.profile, page: () => const ProfileView(), bindings: [ProfileBinding(), AuthBinding()]),
  ];
}