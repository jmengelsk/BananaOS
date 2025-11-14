.class public abstract Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static convertMsg(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "MSG_SET_AUTH_HALL"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "MSG_AUTH_FORCE_UNVERIFY"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "MSG_AUTH_TIMEOUT"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "MSG_AUTH_STOP"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "MSG_AUTH_RESPONSE"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "MSG_AUTH_START"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "MSG_INITIALIZE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract systemReady()V
.end method
