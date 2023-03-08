import 'package:auto_route/auto_route.dart';
import 'package:beam/core/cubit/event_list_cubit.dart';
import 'package:beam/core/widgets/ct/ct_fw_image.dart';
import 'package:beam/screens/event/cubit/event_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class EventPage extends StatelessWidget {
  const EventPage({@PathParam('id') required this.eventId, super.key});

  final String eventId;

  @override
  Widget build(BuildContext context) {
    final event = context.select(
      (EventListCubit value) =>
          value.state.where((element) => element.id == eventId).first,
    );

    return BlocProvider(
      create: (context) => EventCubit(event),
      child: const EventView(),
    );
  }
}

class EventView extends StatelessWidget {
  const EventView({super.key});

  @override
  Widget build(BuildContext context) {
    final event = context.select((EventCubit value) => value.state);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: Color.fromARGB(114, 0, 0, 0),
        backgroundColor: Colors.transparent,
        // title: Text(
        //   event.title,
        //   overflow: TextOverflow.ellipsis,
        //   maxLines: 1,
        // ),
        leading: IconButton(
          onPressed: () {
            context.router.pop();
          },
          icon: const Icon(
            color: Colors.white,
            Icons.arrow_back,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              color: Colors.white,
              Icons.share_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              color: Colors.white,
              Icons.favorite_border,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 300,
            child: CTFullWidthImage(
              imgUrl: event.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              event.title,
              style: GoogleFonts.robotoFlex(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Row(
              children: [
                const Icon(
                  Icons.place,
                  size: 16,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  event.venue,
                  style: GoogleFonts.roboto(fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Row(
              children: [
                const Icon(
                  Icons.date_range,
                  size: 16,
                ),
                const SizedBox(
                  width: 4,
                ),
                // If only for a day
                if (event.dateEnd
                        .toDate()
                        .difference(event.dateStart.toDate())
                        .inDays <
                    1) ...[
                  Text(
                    DateFormat('dd/MM/yyyy').format(
                      event.dateStart.toDate(),
                    ),
                    style: GoogleFonts.roboto(fontSize: 16),
                  )
                ] else ...[
                  Text(
                    '${DateFormat('dd/MM').format(
                      event.dateStart.toDate(),
                    )} - ${DateFormat('dd/MM/yyyy').format(
                      event.dateStart.toDate(),
                    )}',
                    style: GoogleFonts.roboto(fontSize: 16),
                  )
                ],
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Row(
              children: [
                const Icon(
                  Icons.timelapse,
                  size: 16,
                ),
                const SizedBox(
                  width: 4,
                ),
                // If only for a day
                Text(
                  '${DateFormat.Hm().format(
                    event.dateStart.toDate(),
                  )} - ${DateFormat.Hm().format(
                    event.dateStart.toDate(),
                  )}',
                  style: GoogleFonts.roboto(fontSize: 16),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: 240,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('30\€\ncad', style: GoogleFonts.robotoMono(),),
            ElevatedButton(onPressed: () {}, child: Text('Compra biglietto')),
          ],
        ),
      ),
    );
  }
}
