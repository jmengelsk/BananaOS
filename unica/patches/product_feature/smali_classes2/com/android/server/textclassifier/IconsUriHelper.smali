.class public final Lcom/android/server/textclassifier/IconsUriHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEFAULT_ID_SUPPLIER:Lcom/android/server/textclassifier/IconsUriHelper$$ExternalSyntheticLambda0;

.field public static final sSingleton:Lcom/android/server/textclassifier/IconsUriHelper;


# instance fields
.field public final mIdSupplier:Ljava/util/function/Supplier;

.field public final mPackageIds:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/textclassifier/IconsUriHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/textclassifier/IconsUriHelper;->DEFAULT_ID_SUPPLIER:Lcom/android/server/textclassifier/IconsUriHelper$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/server/textclassifier/IconsUriHelper;

    invoke-direct {v0}, Lcom/android/server/textclassifier/IconsUriHelper;-><init>()V

    sput-object v0, Lcom/android/server/textclassifier/IconsUriHelper;->sSingleton:Lcom/android/server/textclassifier/IconsUriHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    sget-object v1, Lcom/android/server/textclassifier/IconsUriHelper;->DEFAULT_ID_SUPPLIER:Lcom/android/server/textclassifier/IconsUriHelper$$ExternalSyntheticLambda0;

    iput-object v1, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mIdSupplier:Ljava/util/function/Supplier;

    const-string/jumbo p0, "android"

    invoke-virtual {v0, p0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
