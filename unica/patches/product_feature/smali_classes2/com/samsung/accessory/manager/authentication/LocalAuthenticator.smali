.class public abstract Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static convertMsg(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_22

    const/4 p0, 0x0

    return-object p0

    :pswitch_5  #0x7
    const-string/jumbo p0, "MSG_SET_AUTH_HALL"

    return-object p0

    :pswitch_9  #0x6
    const-string/jumbo p0, "MSG_AUTH_FORCE_UNVERIFY"

    return-object p0

    :pswitch_d  #0x5
    const-string/jumbo p0, "MSG_AUTH_TIMEOUT"

    return-object p0

    :pswitch_11  #0x4
    const-string/jumbo p0, "MSG_AUTH_STOP"

    return-object p0

    :pswitch_15  #0x3
    const-string/jumbo p0, "MSG_AUTH_RESPONSE"

    return-object p0

    :pswitch_19  #0x2
    const-string/jumbo p0, "MSG_AUTH_START"

    return-object p0

    :pswitch_1d  #0x1
    const-string/jumbo p0, "MSG_INITIALIZE"

    return-object p0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d  #00000001
        :pswitch_19  #00000002
        :pswitch_15  #00000003
        :pswitch_11  #00000004
        :pswitch_d  #00000005
        :pswitch_9  #00000006
        :pswitch_5  #00000007
    .end packed-switch
.end method


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract systemReady()V
.end method
