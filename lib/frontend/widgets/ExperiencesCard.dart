import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rafay_portfolio/frontend/widgets/textstyle.dart';

class ExperienceCard extends StatefulWidget {
  final String companyName;
  final String position;
  final String employmentTime;
  final List<String> toolsUsed;
  final List<String> jobRole;

  const ExperienceCard({
    super.key,
    required this.companyName,
    required this.position,
    required this.employmentTime,
    required this.toolsUsed,
    required this.jobRole,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ExperienceCardState createState() => _ExperienceCardState();
}

class _ExperienceCardState extends State<ExperienceCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Card(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        StyledText(
                          text: widget.companyName,
                          fontSize: 30,
                          bold: true,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        StyledText(
                          text: "@${widget.position}",
                          fontSize: 18,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.clock,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  StyledText(
                    text: widget.employmentTime,
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              StyledText(
                text: "Responsibilities",
                fontSize: 22,
                bold: true,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.jobRole.map((role) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.arrow_right,
                          size: 30,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                        Expanded(
                          child: StyledText(
                            text: role,
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
