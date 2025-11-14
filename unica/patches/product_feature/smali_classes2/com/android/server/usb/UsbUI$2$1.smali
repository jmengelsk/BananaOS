.class public final Lcom/android/server/usb/UsbUI$2$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_5
    return-void
.end method
