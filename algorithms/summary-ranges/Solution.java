public class Solution {

    private String makeRange(int[] nums, int from, int to) {
        return from == to
            ? String.valueOf(nums[from])
            : String.valueOf(nums[from]) + "->" + String.valueOf(nums[to]);
    }

    public List<String> summaryRanges(int[] nums) {
        final List<String> summary = new ArrayList();

        if (nums.length > 0) {
            int from = 0;
            int to = 0;

            for (int i = 1; i < nums.length; i++) {
                if (nums[i] == nums[i - 1] + 1) {
                    to = i;
                } else {
                    summary.add(makeRange(nums, from, to));
                    from = to = i;
                }
            }

            summary.add(makeRange(nums, from, to));
        }

        return summary;
    }

}
