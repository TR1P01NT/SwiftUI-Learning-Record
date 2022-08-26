//
//  ContentView.swift
//  RSP
//
//  Created by Kev Lee on 25/08/2022.
//

import SwiftUI

struct ContentView: View {
    var moves = ["Rock🪨", "Scissor✂️", "Paper📄"].shuffled()
    @State private var shouldWin = Bool.random()
    @State private var userChoice = "Rock🪨"
    @State private var userScore = 0
    @State private var gameCount = 1
    @State private var scoreTitle = ""
    @State private var showingScore = false
    @State private var gameEnd = false
    @State private var appChoice = "Rock🪨"


    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Text("Rock Scissor Paper")
                    .font(.largeTitle)

                VStack {
                    Text("App's choice")
                        .font(.subheadline.weight(.heavy))
                        .foregroundColor(.secondary)
                    Text("\(appChoice) and you should \(shouldWin ? "win" : "lose")")
                        .font(.subheadline.weight(.semibold))
                        .font(.title)
                }
                Spacer()

                VStack(spacing: 20) {
                    ForEach (0..<3) { move in
                        Button {
                            buttonTapped(moves[move])
                        } label: {
                            Text(moves[move])
                                .clipShape(Capsule())
                                .shadow(radius: 5)
                        }
                        .padding()
                    }
                }

                Spacer()

                Text("Your score: \(userScore)")
                Spacer()
            }
        }

        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            if scoreTitle == "Correct" {
                Text("Your score: \(userScore)")
            } else {
                Text("Try again")
            }
        }

        .alert("Game Finished", isPresented: $gameEnd) {
            Button("Restart game", action: resetGame)
        } message: {
            Text("Your final score is \(userScore)")
        }
    }

    func buttonTapped(_ move: String) {
        switch(move) {
        case "Rock🪨":
            if (shouldWin && (appChoice == "Scissor✂️")) {
                userScore += 1
                scoreTitle = "Correct"
            } else if (!shouldWin && (appChoice == "Paper📄")) {
                userScore += 1
                scoreTitle = "Correct"
            } else {
                scoreTitle = "Wrong"
            }
        case "Scissor✂️":
            if (shouldWin && (appChoice == "Paper📄")) {
                userScore += 1
                scoreTitle = "Correct"
            } else if (!shouldWin && (appChoice == "Rock🪨")) {
                userScore += 1
                scoreTitle = "Correct"
            } else {
                scoreTitle = "Wrong"
            }
        case "Paper📄":
            if (shouldWin && (appChoice == "Rock🪨")) {
                userScore += 1
                scoreTitle = "Correct"
            } else if (!shouldWin && (appChoice == "Scissor✂️")) {
                userScore += 1
                scoreTitle = "Correct"
            } else {
                scoreTitle = "Wrong"
            }
        default:
            userScore = userScore
        }

        showingScore = true
    }

    func askQuestion() {
        appChoice = moves.randomElement() ?? "Rock🪨"
        shouldWin = Bool.random()
        gameCount += 1

        if gameCount == 10 {
            gameEnd = true
        }
    }

    func resetGame() {
        userScore = 0
        gameCount = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
