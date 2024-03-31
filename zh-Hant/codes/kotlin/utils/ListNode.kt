/**
 * File: ListNode.kt
 * Created Time: 2024-01-25
 * Author: curtishd (1023632660@qq.com)
 */

package utils

/* 鏈結串列節點 */
class ListNode(var value: Int) {
    var next: ListNode? = null

    companion object {
        /* 將串列反序列化為鏈結串列 */
        fun arrToLinkedList(arr: IntArray): ListNode? {
            val dum = ListNode(0)
            var head = dum
            for (value in arr) {
                head.next = ListNode(value)
                head = head.next!!
            }
            return dum.next
        }
    }
}
