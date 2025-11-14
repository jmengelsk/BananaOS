.class public final Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBlocklist:Ljava/lang/String;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mKey:Ljava/lang/String;

.field public final mPath:Ljava/lang/String;

.field public final mTmpDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "cover_pubkey_blocklist"

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mPath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    new-instance p1, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;-><init>(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;I)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
