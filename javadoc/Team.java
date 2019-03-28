
/**
 * <p>A <tt>Team</tt> represents a group of {@link Ballplayer}s who play
 * baseball together, and can compute summary statistics about the group's
 * past performance. Two <tt>Team</tt> objects are required to run a
 * single-game simulation (see {@link Simulator#simSingleGame}.) Methods like
 * {@link Team#getTeamBattingAverage()} and {@link Team#getWonLossRecord()}
 * can be called to get aggregate information about the team's performance.</p>
 *
 * <p>Note that a {@link Ballplayer} can be a member of <i>any number</i> of
 * teams. (This will happen if a player was traded during his career, for
 * instance.) In this case, the summary statistics for each <tt>Team</tt>, and
 * its performance in a simulation, will take place as though that player's
 * entire career stats applied to <i>each</i> of his teams.</p>
 *
 * @author MW
 */
public class Team {

    public double getTeamBattingAverage() {
        return 0.0;
    }

    public int[] getWonLossRecord() {
        return new int[]{0,0};
    }
}
