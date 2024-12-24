import 'package:flutter/material.dart';

class NewAppointmentForm extends StatelessWidget {
  const NewAppointmentForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController _salonController = TextEditingController();
    final TextEditingController _serviceController = TextEditingController();
    final TextEditingController _dateController = TextEditingController();
    final TextEditingController _timeController = TextEditingController();

    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 28,
        bottom: MediaQuery.of(context).viewInsets.bottom + 25,
      ),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Create New Appointment',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              _buildTextField(
                controller: _salonController,
                label: 'Salon',
                hint: 'Enter salon name',
                icon: Icons.storefront,
              ),
              const SizedBox(height: 16),
              _buildTextField(
                controller: _serviceController,
                label: 'Service',
                hint: 'Enter service name',
                icon: Icons.miscellaneous_services,
              ),
              const SizedBox(height: 16),
              _buildDatePickerField(
                context: context,
                controller: _dateController,
                label: 'Date',
                hint: 'Select date',
                icon: Icons.calendar_today,
              ),
              const SizedBox(height: 16),
              _buildTimePickerField(
                context: context,
                controller: _timeController,
                label: 'Time',
                hint: 'Select time',
                icon: Icons.access_time,
              ),
              const SizedBox(height: 24),
              Center(
                child: SizedBox(
                  // set button width 80% of screen
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Handle form submission logic here
                        Navigator.pop(context);
                      }
                    },
                    // Icon with a larger size and white color
                    label: const Text(
                      'Create Appointment',
                      style: TextStyle(
                        fontSize: 16, // Larger text size
                        fontWeight: FontWeight.w600, // Bold text for emphasis
                        color: Colors.white, // Change text color to white
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Button background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper to build a text input field with an icon
  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String hint,
    required IconData icon,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(
          icon,
          color: Colors.blue,
          size: 18,
        ),
        filled: true,
        fillColor: Colors.grey.shade200,
        labelStyle: const TextStyle(color: Colors.blueGrey, fontSize: 12),
        hintStyle: controller.text.isEmpty
            ? const TextStyle(color: Colors.grey, fontSize: 12)
            : const TextStyle(color: Colors.black, fontSize: 12),
        contentPadding: controller.text.isEmpty
            ? const EdgeInsets.symmetric(vertical: 10, horizontal: 8)
            : const EdgeInsets.symmetric(horizontal: 8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.blue, width: 1),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $label';
        }
        return null;
      },
    );
  }

  // Helper to build a date picker field
  Widget _buildDatePickerField({
    required BuildContext context,
    required TextEditingController controller,
    required String label,
    required String hint,
    required IconData icon,
  }) {
    return GestureDetector(
      onTap: () async {
        final selectedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime(2100),
        );
        if (selectedDate != null) {
          controller.text =
              '${selectedDate.month}/${selectedDate.day}/${selectedDate.year}';
        }
      },
      child: AbsorbPointer(
        child: _buildTextField(
          controller: controller,
          label: label,
          hint: hint,
          icon: icon,
        ),
      ),
    );
  }

  // Helper to build a time picker field
  Widget _buildTimePickerField({
    required BuildContext context,
    required TextEditingController controller,
    required String label,
    required String hint,
    required IconData icon,
  }) {
    return GestureDetector(
      onTap: () async {
        final selectedTime = await showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
        );
        if (selectedTime != null) {
          controller.text = selectedTime.format(context);
        }
      },
      child: AbsorbPointer(
        child: _buildTextField(
          controller: controller,
          label: label,
          hint: hint,
          icon: icon,
        ),
      ),
    );
  }
}
