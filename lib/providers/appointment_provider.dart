import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/services/appointment_service.dart';

// Appointment Model
class Appointment {
  final String id;
  final String title;
  final DateTime dateTime;

  Appointment({required this.id, required this.title, required this.dateTime});
}

// State for the appointment list
class AppointmentState {
  final List<Appointment> appointments;
  final bool isLoading;
  final String? error;

  AppointmentState({this.appointments = const [], this.isLoading = false, this.error});
}

// StateNotifier for managing appointment state
class AppointmentNotifier extends StateNotifier<AppointmentState> {
  AppointmentNotifier() : super(AppointmentState());

  // Fetch appointments
  Future<void> fetchAppointments() async {
    state = AppointmentState(isLoading: true);
    try {
      // Fetch from service (to be implemented)
      final appointments = await AppointmentService.fetchAppointments();
      state = AppointmentState(appointments: appointments);
    } catch (e) {
      state = AppointmentState(error: e.toString());
    }
  }

  // Create appointment
  Future<void> createAppointment(Appointment appointment) async {
    // Add implementation for creating appointment
  }

  // Update appointment
  Future<void> updateAppointment(Appointment appointment) async {
    // Add implementation for updating appointment
  }

  // Cancel appointment
  Future<void> cancelAppointment(String id) async {
    // Add implementation for cancelling appointment
  }
}

// Provider for AppointmentNotifier
final appointmentProvider = StateNotifierProvider<AppointmentNotifier, AppointmentState>((ref) {
  return AppointmentNotifier();
});