.class public final Lcom/android/server/notification/NASLearnMoreActivity$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NASLearnMoreActivity;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NASLearnMoreActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NASLearnMoreActivity$1;->this$0:Lcom/android/server/notification/NASLearnMoreActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/notification/NASLearnMoreActivity$1;->this$0:Lcom/android/server/notification/NASLearnMoreActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
