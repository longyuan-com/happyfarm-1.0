package com.ssm.entity;

import java.util.ArrayList;
import java.util.List;

public class LogisticsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public LogisticsExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andLogisticsidIsNull() {
            addCriterion("logisticsId is null");
            return (Criteria) this;
        }

        public Criteria andLogisticsidIsNotNull() {
            addCriterion("logisticsId is not null");
            return (Criteria) this;
        }

        public Criteria andLogisticsidEqualTo(Integer value) {
            addCriterion("logisticsId =", value, "logisticsid");
            return (Criteria) this;
        }

        public Criteria andLogisticsidNotEqualTo(Integer value) {
            addCriterion("logisticsId <>", value, "logisticsid");
            return (Criteria) this;
        }

        public Criteria andLogisticsidGreaterThan(Integer value) {
            addCriterion("logisticsId >", value, "logisticsid");
            return (Criteria) this;
        }

        public Criteria andLogisticsidGreaterThanOrEqualTo(Integer value) {
            addCriterion("logisticsId >=", value, "logisticsid");
            return (Criteria) this;
        }

        public Criteria andLogisticsidLessThan(Integer value) {
            addCriterion("logisticsId <", value, "logisticsid");
            return (Criteria) this;
        }

        public Criteria andLogisticsidLessThanOrEqualTo(Integer value) {
            addCriterion("logisticsId <=", value, "logisticsid");
            return (Criteria) this;
        }

        public Criteria andLogisticsidIn(List<Integer> values) {
            addCriterion("logisticsId in", values, "logisticsid");
            return (Criteria) this;
        }

        public Criteria andLogisticsidNotIn(List<Integer> values) {
            addCriterion("logisticsId not in", values, "logisticsid");
            return (Criteria) this;
        }

        public Criteria andLogisticsidBetween(Integer value1, Integer value2) {
            addCriterion("logisticsId between", value1, value2, "logisticsid");
            return (Criteria) this;
        }

        public Criteria andLogisticsidNotBetween(Integer value1, Integer value2) {
            addCriterion("logisticsId not between", value1, value2, "logisticsid");
            return (Criteria) this;
        }

        public Criteria andLogisticsnameIsNull() {
            addCriterion("logisticsName is null");
            return (Criteria) this;
        }

        public Criteria andLogisticsnameIsNotNull() {
            addCriterion("logisticsName is not null");
            return (Criteria) this;
        }

        public Criteria andLogisticsnameEqualTo(String value) {
            addCriterion("logisticsName =", value, "logisticsname");
            return (Criteria) this;
        }

        public Criteria andLogisticsnameNotEqualTo(String value) {
            addCriterion("logisticsName <>", value, "logisticsname");
            return (Criteria) this;
        }

        public Criteria andLogisticsnameGreaterThan(String value) {
            addCriterion("logisticsName >", value, "logisticsname");
            return (Criteria) this;
        }

        public Criteria andLogisticsnameGreaterThanOrEqualTo(String value) {
            addCriterion("logisticsName >=", value, "logisticsname");
            return (Criteria) this;
        }

        public Criteria andLogisticsnameLessThan(String value) {
            addCriterion("logisticsName <", value, "logisticsname");
            return (Criteria) this;
        }

        public Criteria andLogisticsnameLessThanOrEqualTo(String value) {
            addCriterion("logisticsName <=", value, "logisticsname");
            return (Criteria) this;
        }

        public Criteria andLogisticsnameLike(String value) {
            addCriterion("logisticsName like", value, "logisticsname");
            return (Criteria) this;
        }

        public Criteria andLogisticsnameNotLike(String value) {
            addCriterion("logisticsName not like", value, "logisticsname");
            return (Criteria) this;
        }

        public Criteria andLogisticsnameIn(List<String> values) {
            addCriterion("logisticsName in", values, "logisticsname");
            return (Criteria) this;
        }

        public Criteria andLogisticsnameNotIn(List<String> values) {
            addCriterion("logisticsName not in", values, "logisticsname");
            return (Criteria) this;
        }

        public Criteria andLogisticsnameBetween(String value1, String value2) {
            addCriterion("logisticsName between", value1, value2, "logisticsname");
            return (Criteria) this;
        }

        public Criteria andLogisticsnameNotBetween(String value1, String value2) {
            addCriterion("logisticsName not between", value1, value2, "logisticsname");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}