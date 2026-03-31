class AppointmentService {
    List<Appointment> appointments = [];

    void createAppointment(Appointment appointment) {
        appointments.add(appointment);
    }

    void updateAppointment(String id, Appointment updatedAppointment) {
        for (int i = 0; i < appointments.length; i++) {
            if (appointments[i].id == id) {
                appointments[i] = updatedAppointment;
                return;
            }
        }
    }

    void cancelAppointment(String id) {
        appointments.removeWhere((appointment) => appointment.id == id);
    }

    Appointment fetchAppointment(String id) {
        return appointments.firstWhere((appointment) => appointment.id == id, orElse: () => null);
    }

    bool isSundayOnlyAvailable(DateTime date) {
        return date.weekday == DateTime.sunday;
    }
}

class Appointment {
    String id;
    String details;
    DateTime date;

    Appointment(this.id, this.details, this.date);
}
