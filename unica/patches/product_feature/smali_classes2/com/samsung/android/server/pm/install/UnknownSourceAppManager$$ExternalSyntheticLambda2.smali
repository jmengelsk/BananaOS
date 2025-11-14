.class public final synthetic Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;

    const-string v0, "/data/system/UnknownSourceAppList.xml"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->writeUnknownPackageXmlSync(Ljava/lang/String;)V

    return-void
.end method
