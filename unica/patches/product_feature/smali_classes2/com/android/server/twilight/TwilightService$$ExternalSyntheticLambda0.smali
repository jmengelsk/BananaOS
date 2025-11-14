.class public final synthetic Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/twilight/TwilightService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/twilight/TwilightService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/twilight/TwilightService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/twilight/TwilightService;

    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/android/server/twilight/TwilightService;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method
