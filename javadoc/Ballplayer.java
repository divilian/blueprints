/**
 * A <tt>Ballplayer</tt> represents a historical baseball player and the
 * composite statistics over his career. Each <tt>Ballplayer</tt> object
 * is associated with one {@link Team} even if he played for multiple
 * teams in his actual career.
 * @author SD
 */
public class Ballplayer {

    /**
     * Constructs a new <tt>Ballplayer</tt> object with "empty" stats
     *   (<i>i.e.</i>, all set to their initial, default values.)
     * @param name the real (no nicknames) first and last name of the player.
     * @param uni the most well-known uniform number he played under.
     * @param team the mascot name (not city) of the {@link Team} he is most
     *   commonly associated with.
     * @throws NoTeamException if the <tt>team</tt> parameter does not
     *   correspond to the mascot name of any known {@link Team}.
     */
    public Ballplayer(String name, int uni, String team) throws NoTeamException {
    }
    
    /**
     * Returns the player's career batting average, measured as total hits
     *   divided by total "at bats." If the number of "at bats" is zero,
     *   returns 0.0 rather than give a divide-by-zero error.
     * @deprecated This method should be eschewed in favor of more recently
     *   developed stats such as {@link Ballplayer#getOnBasePercentage} and
     *   {@link Ballplayer#getSluggingPercentage}.
     * @return the batting average on a 0.0-to-1.0 scale.
     */
    public double getBattingAvg() {
        return 0.0;
    }

    public double getOnBasePercentage() { return 0.0; }
    public double getSluggingPercentage() { return 0.0; }
}
