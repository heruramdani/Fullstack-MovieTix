import 'package:airplane/cubit/seat_cubit.dart';
import 'package:airplane/models/movie_model.dart';
import 'package:airplane/models/transaction_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../widgets/custom_bottom.dart';
import '../widgets/seat_item.dart';
import 'checkout_page.dart';

class ChooseSeatPage extends StatelessWidget {
  final DestinationModel destination;

  const ChooseSeatPage(this.destination, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Text(
          'select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semibold,
          ),
        ),
      );
    }

    Widget status() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            //Note Available
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_available.png',
                  ),
                ),
              ),
            ),
            Text(
              'available',
              style: blackTextStyle,
            ),
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6, left: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_selected.png',
                  ),
                ),
              ),
            ),
            Text(
              'Selected',
              style: blackTextStyle,
            ),
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6, left: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_unavailable.png',
                  ),
                ),
              ),
            ),
            Text(
              'Unavailable',
              style: blackTextStyle,
            ),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return BlocBuilder<SeatCubit, List<String>>(builder: (context, state) {
        return Container(
          margin: EdgeInsets.only(top: 30),
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: kWhiteColor,
          ),
          child: Column(
            children: [
              //Note : Seat indicators
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        'A',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        'B',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        'C',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        'D',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              //Note : Seat 1
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatItem(
                      id: 'A1',
                    ),
                    SeatItem(
                      id: 'B1',
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '1',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular,
                          ),
                        ),
                      ),
                    ),
                    SeatItem(
                      id: 'C1',
                    ),
                    SeatItem(
                      id: 'D1',
                    ),
                  ],
                ),
              ),

              //Note : Seat 2
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatItem(
                      id: 'A2',
                    ),
                    SeatItem(
                      id: 'B2',
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '2',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular,
                          ),
                        ),
                      ),
                    ),
                    SeatItem(
                      id: 'C2',
                    ),
                    SeatItem(
                      id: 'D2',
                    ),
                  ],
                ),
              ),

              //Note : Seat 3
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatItem(
                      id: 'A3',
                    ),
                    SeatItem(
                      id: 'B3',
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '3',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular,
                          ),
                        ),
                      ),
                    ),
                    SeatItem(
                      id: 'C3',
                    ),
                    SeatItem(
                      id: 'D3',
                    ),
                  ],
                ),
              ),

              //Note : Seat 4
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatItem(
                      id: 'A4',
                    ),
                    SeatItem(
                      id: 'B4',
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '4',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular,
                          ),
                        ),
                      ),
                    ),
                    SeatItem(
                      id: 'C4',
                    ),
                    SeatItem(
                      id: 'D4',
                    ),
                  ],
                ),
              ),

              //Note : Seat 5
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatItem(
                      id: 'A5',
                    ),
                    SeatItem(
                      id: 'B5',
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '5',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular,
                          ),
                        ),
                      ),
                    ),
                    SeatItem(
                      id: 'C5',
                    ),
                    SeatItem(
                      id: 'D5',
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your Seat',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    Text(
                      state.join(', '),
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              //Note : Total
              Container(
                margin: EdgeInsets.only(top: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    Text(
                      NumberFormat.currency(
                        locale: 'id',
                        symbol: 'IDR ',
                        decimalDigits: 0,
                      ).format(state.length * destination.price),
                      style: purpleTextStyle.copyWith(
                        fontWeight: semibold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      });
    }

    Widget checkoutButton() {
      return BlocBuilder<SeatCubit, List<String>>(builder: (context, state) {
        return CustomButton(
          title: 'Continue to Checkout',
          onPressed: () {
            int price = destination.price * state.length;
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CheckoutPage(
                  TransactionModel(
                    destination: destination,
                    amounOfTraveler: state.length,
                    selectedSeats: state.join(', '),
                    insurance: true,
                    refundable: false,
                    vat: 0.45,
                    price: price,
                    grandTotal: price + (price * 0.45).toInt(),
                  ),
                ),
              ),
            );
          },
          margin: EdgeInsets.only(
            top: 30,
            bottom: 46,
          ),
        );
      });
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          title(),
          status(),
          selectSeat(),
          checkoutButton(),
        ],
      ),
    );
  }
}
