import java.util.Scanner;

class InvalidInputException extends Exception {
    public InvalidInputException(String message) {
        super(message);
    }
}

class Player {
    private String name;
    private int runs;
    private int ballsFaced;
    private int fours;
    private int sixes;

    public Player(String name) {
        this.name = name;
        this.runs = 0;
        this.ballsFaced = 0;
        this.fours = 0;
        this.sixes = 0;
    }

    public void playBall(int result) throws InvalidInputException {
        if (result < 0 || result > 6) {
            throw new InvalidInputException("Invalid runs! Runs must be between 0 and 6.");
        }
        ballsFaced++;
        runs += result;
        if (result == 4) fours++;
        else if (result == 6) sixes++;
    }

    public void displayStats() {
        System.out.println("Player Name : " + name);
        System.out.println("Runs Scored : " + runs);
        System.out.println("Balls Faced : " + ballsFaced);
        System.out.println("No. of 4's  : " + fours);
        System.out.println("No. of 6's  : " + sixes);
    }

    public String getName() {
        return name;
    }
}

class Team {
    private Player[] players;
    private int currentBatsmanIndex;
    private int totalScore;
    private int wicketsLost;
    private int ballsBowled;
    private int extras;
    private int wideBalls;
    private int noBalls;

    public Team(String[] playerNames) {
        players = new Player[playerNames.length];
        for (int i = 0; i < playerNames.length; i++) {
            players[i] = new Player(playerNames[i]);
        }
        currentBatsmanIndex = 0;
        totalScore = 0;
        wicketsLost = 0;
        ballsBowled = 0;
        extras = 0;
        wideBalls = 0;
        noBalls = 0;
    }

    public void playBall(int result) throws InvalidInputException {
        Scanner sc = new Scanner(System.in);
        switch (result) {
            case 1: // Wicket
                System.out.println(players[currentBatsmanIndex].getName() + " got out!");
                wicketsLost++;
                ballsBowled++;
                currentBatsmanIndex++;
                break;
            case 2: // Normal run
                System.out.print("Enter runs scored (0-6): ");
                int runs = sc.nextInt();
                players[currentBatsmanIndex].playBall(runs);
                totalScore += runs;
                ballsBowled++;
                System.out.println(runs + " runs scored.");
                break;
            case 3: // Wide ball
                wideBalls++;
                extras++;
                totalScore++;
                System.out.println("Wide ball! 1 extra run.");
                System.out.print("Enter additional runs scored off the wide (0-6): ");
                int wideRuns = sc.nextInt();
                if (wideRuns > 0) {
                    totalScore += wideRuns;
                    System.out.println(wideRuns + " additional runs scored off the wide ball.");
                }
                break;
            case 4: // No ball
                noBalls++;
                extras++;
                totalScore++;
                System.out.println("No ball! 1 extra run. Free hit awarded.");
                System.out.print("Enter runs scored off the no ball (0-6): ");
                int noBallRuns = sc.nextInt();
                if (noBallRuns > 0) {
                    players[currentBatsmanIndex].playBall(noBallRuns);
                    totalScore += noBallRuns;
                    System.out.println(noBallRuns + " runs scored off the no ball.");
                }
                break;
            default:
                throw new InvalidInputException("Invalid choice! Please enter 1, 2, 3, or 4.");
        }
    }

    public void displayTeamStats() {
        System.out.println("Team Score: " + totalScore + "/" + wicketsLost);
        System.out.println("Extras: " + extras + " (Wide: " + wideBalls + ", No Ball: " + noBalls + ")");
        System.out.println("Total Balls Bowled: " + ballsBowled);
        System.out.println("\nPlayer Stats:");
        for (int i = 0; i <= currentBatsmanIndex && i < players.length; i++) {
            players[i].displayStats();
            System.out.println();
        }
    }

    public int getWicketsLost() {
        return wicketsLost;
    }

    public int getBallsBowled() {
        return ballsBowled;
    }
}

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        try {
            String[] playerNames = {"Player - A", "Player - B", "Player - C", "Player - D", "Player - E",
                                    "Player - F", "Player - G", "Player - H", "Player - I", "Player - J", "Player - K"};

            System.out.print("Enter number of overs: ");
            int overs = sc.nextInt();
            int totalBalls = overs * 6;

            System.out.println("\n<===============Match Start!==============>\n");

            Team team = new Team(playerNames);

            while (team.getBallsBowled() < totalBalls && team.getWicketsLost() < 10) {
                System.out.println("\nBall " + (team.getBallsBowled() + 1) + " of over " + ((team.getBallsBowled() / 6) + 1));
                System.out.println("1. Wicket");
                System.out.println("2. Run");
                System.out.println("3. Wide Ball");
                System.out.println("4. No Ball");
                System.out.print("Enter your choice: ");
                int result = sc.nextInt();
                team.playBall(result);
            }

            System.out.println("\n<===============Match Over!==============>\n");
            team.displayTeamStats();
        } catch (InvalidInputException e) {
            System.out.println("Error: " + e.getMessage());
        } catch (Exception e) {
            System.out.println("Error: Invalid input. Please try again.");
            e.printStackTrace();
        } finally {
            sc.close();
        }
    }
}