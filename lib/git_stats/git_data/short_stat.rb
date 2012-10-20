module GitStats
  module GitData
    class ShortStat
      attr_reader :commit, :files_changed, :insertions, :deletions

      def initialize(commit)
        @commit = commit
        calculate_stat
      end

      def to_s
        "#{self.class} #@commit"
      end

      private
      def calculate_stat
        stat_line = commit.repo.run("git show --shortstat --oneline #{commit.sha}").lines.to_a[1]
        if stat_line.blank?
          @files_changed = @insertions = @deletions = 0
        else
          @files_changed = stat_line[/(\d+) files? changed/, 1].to_i
          @insertions = stat_line[/(\d+) insertions?/, 1].to_i
          @deletions = stat_line[/(\d+) deletions?/, 1].to_i
        end
      end
    end
  end
end