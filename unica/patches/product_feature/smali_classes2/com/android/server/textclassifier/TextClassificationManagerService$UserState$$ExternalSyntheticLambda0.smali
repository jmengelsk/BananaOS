.class public final synthetic Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Landroid/view/textclassifier/TextClassificationConstants;


# direct methods
.method public synthetic constructor <init>(Landroid/view/textclassifier/TextClassificationConstants;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$$ExternalSyntheticLambda0;->f$0:Landroid/view/textclassifier/TextClassificationConstants;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$$ExternalSyntheticLambda0;->f$0:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getTextClassifierServicePackageOverride()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
