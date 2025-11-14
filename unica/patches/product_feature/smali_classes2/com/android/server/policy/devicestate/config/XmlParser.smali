.class public abstract Lcom/android/server/policy/devicestate/config/XmlParser;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static read(Ljava/io/InputStream;)Lcom/android/server/policy/devicestate/config/DeviceStateConfig;
    .locals 11

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, "device-state-config"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    new-instance p0, Lcom/android/server/policy/devicestate/config/DeviceStateConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_2c

    if-eq v1, v3, :cond_2c

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "device-state"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    new-instance v1, Lcom/android/server/policy/devicestate/config/DeviceState;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v2, :cond_28

    if-eq v5, v3, :cond_28

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "identifier"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v6, v1, Lcom/android/server/policy/devicestate/config/DeviceState;->identifier:Ljava/math/BigInteger;

    goto :goto_1

    :cond_2
    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/policy/devicestate/config/DeviceState;->name:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string/jumbo v7, "properties"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    new-instance v5, Lcom/android/server/policy/devicestate/config/Properties;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v2, :cond_7

    if-eq v6, v3, :cond_7

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "property"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/policy/devicestate/config/Properties;->property:Ljava/util/List;

    if-nez v7, :cond_5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v5, Lcom/android/server/policy/devicestate/config/Properties;->property:Ljava/util/List;

    :cond_5
    iget-object v7, v5, Lcom/android/server/policy/devicestate/config/Properties;->property:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_7
    if-ne v6, v3, :cond_8

    iput-object v5, v1, Lcom/android/server/policy/devicestate/config/DeviceState;->properties:Lcom/android/server/policy/devicestate/config/Properties;

    goto/16 :goto_1

    :cond_8
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string/jumbo v0, "Properties is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const-string/jumbo v7, "flags"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    new-instance v5, Lcom/android/server/policy/devicestate/config/Flags;

    invoke-direct {v5}, Lcom/android/server/policy/devicestate/config/Flags;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v2, :cond_c

    if-eq v6, v3, :cond_c

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v4, :cond_a

    goto :goto_3

    :cond_a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "flag"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/policy/devicestate/config/Flags;->getFlag()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    :cond_c
    if-ne v6, v3, :cond_d

    iput-object v5, v1, Lcom/android/server/policy/devicestate/config/DeviceState;->flags:Lcom/android/server/policy/devicestate/config/Flags;

    goto/16 :goto_1

    :cond_d
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "Flags is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    const-string/jumbo v7, "conditions"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    new-instance v5, Lcom/android/server/policy/devicestate/config/Conditions;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v2, :cond_25

    if-eq v7, v3, :cond_25

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v4, :cond_f

    goto :goto_4

    :cond_f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "lid-switch"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    new-instance v7, Lcom/android/server/policy/devicestate/config/LidSwitchCondition;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v2, :cond_12

    if-eq v8, v3, :cond_12

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    if-eq v8, v4, :cond_10

    goto :goto_5

    :cond_10
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "open"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/policy/devicestate/config/LidSwitchCondition;->open:Ljava/lang/Boolean;

    goto :goto_5

    :cond_11
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    :cond_12
    if-ne v8, v3, :cond_13

    iput-object v7, v5, Lcom/android/server/policy/devicestate/config/Conditions;->lidSwitch:Lcom/android/server/policy/devicestate/config/LidSwitchCondition;

    goto :goto_4

    :cond_13
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string/jumbo v0, "LidSwitchCondition is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    const-string/jumbo v8, "sensor"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    new-instance v7, Lcom/android/server/policy/devicestate/config/SensorCondition;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_6
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v2, :cond_21

    if-eq v8, v3, :cond_21

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    if-eq v8, v4, :cond_15

    goto :goto_6

    :cond_15
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "type"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/policy/devicestate/config/SensorCondition;->type:Ljava/lang/String;

    goto :goto_6

    :cond_16
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/policy/devicestate/config/SensorCondition;->name:Ljava/lang/String;

    goto :goto_6

    :cond_17
    const-string/jumbo v9, "value"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    new-instance v8, Lcom/android/server/policy/devicestate/config/NumericRange;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_7
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v2, :cond_1d

    if-eq v9, v3, :cond_1d

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    if-eq v9, v4, :cond_18

    goto :goto_7

    :cond_18
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "min"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/math/BigDecimal;

    invoke-direct {v10, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v10, v8, Lcom/android/server/policy/devicestate/config/NumericRange;->min_optional:Ljava/math/BigDecimal;

    goto :goto_7

    :cond_19
    const-string/jumbo v10, "min-inclusive"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/math/BigDecimal;

    invoke-direct {v10, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v10, v8, Lcom/android/server/policy/devicestate/config/NumericRange;->minInclusive_optional:Ljava/math/BigDecimal;

    goto :goto_7

    :cond_1a
    const-string/jumbo v10, "max"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/math/BigDecimal;

    invoke-direct {v10, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v10, v8, Lcom/android/server/policy/devicestate/config/NumericRange;->max_optional:Ljava/math/BigDecimal;

    goto :goto_7

    :cond_1b
    const-string/jumbo v10, "max-inclusive"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/math/BigDecimal;

    invoke-direct {v10, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v10, v8, Lcom/android/server/policy/devicestate/config/NumericRange;->maxInclusive_optional:Ljava/math/BigDecimal;

    goto :goto_7

    :cond_1c
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_7

    :cond_1d
    if-ne v9, v3, :cond_1f

    iget-object v9, v7, Lcom/android/server/policy/devicestate/config/SensorCondition;->value:Ljava/util/List;

    if-nez v9, :cond_1e

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v7, Lcom/android/server/policy/devicestate/config/SensorCondition;->value:Ljava/util/List;

    :cond_1e
    iget-object v9, v7, Lcom/android/server/policy/devicestate/config/SensorCondition;->value:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_1f
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string/jumbo v0, "NumericRange is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    :cond_21
    if-ne v8, v3, :cond_23

    iget-object v8, v5, Lcom/android/server/policy/devicestate/config/Conditions;->sensor:Ljava/util/List;

    if-nez v8, :cond_22

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Lcom/android/server/policy/devicestate/config/Conditions;->sensor:Ljava/util/List;

    :cond_22
    iget-object v8, v5, Lcom/android/server/policy/devicestate/config/Conditions;->sensor:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_23
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string/jumbo v0, "SensorCondition is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    :cond_25
    if-ne v7, v3, :cond_26

    iput-object v5, v1, Lcom/android/server/policy/devicestate/config/DeviceState;->conditions:Lcom/android/server/policy/devicestate/config/Conditions;

    goto/16 :goto_1

    :cond_26
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "Conditions is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    :cond_28
    if-ne v5, v3, :cond_2a

    iget-object v3, p0, Lcom/android/server/policy/devicestate/config/DeviceStateConfig;->deviceState:Ljava/util/List;

    if-nez v3, :cond_29

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/devicestate/config/DeviceStateConfig;->deviceState:Ljava/util/List;

    :cond_29
    iget-object v3, p0, Lcom/android/server/policy/devicestate/config/DeviceStateConfig;->deviceState:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2a
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "DeviceState is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_2c
    if-ne v1, v3, :cond_2d

    return-object p0

    :cond_2d
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "DeviceStateConfig is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    return-object v1
.end method

.method public static readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    return-object v0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
