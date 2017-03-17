(ns expression)

(defrecord Constant [value])
(defrecord BinaryPlus [lhs rhs])

(defmulti evaluate class)

(defmethod evaluate Constant
  [c] (:value c))

(defmethod evaluate BinaryPlus
  [bp] (+ (evaluate (:lhs bp)) (evaluate (:rhs bp))))

(defmulti stringify class)

(defmethod stringify Constant
  [c] (str (:value c)))

(defmethod stringify BinaryPlus
  [bp]
  (clojure.string/join " + " [(stringify (:lhs bp))
                              (stringify (:rhs bp))]))
