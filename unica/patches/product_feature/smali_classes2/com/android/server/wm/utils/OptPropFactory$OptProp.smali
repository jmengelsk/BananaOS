.class public final Lcom/android/server/wm/utils/OptPropFactory$OptProp;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCondition:Ljava/util/function/BooleanSupplier;

.field public final mPropertyName:Ljava/lang/String;

.field public mValue:I

.field public final mValueSupplier:Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;Ljava/lang/String;Ljava/util/function/BooleanSupplier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValue:I

    iput-object p1, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValueSupplier:Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;

    iput-object p2, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mPropertyName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mCondition:Ljava/util/function/BooleanSupplier;

    return-void
.end method


# virtual methods
.method public final getValue()I
    .locals 3

    iget v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, -0x2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValueSupplier:Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;

    invoke-virtual {v1}, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;->get()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValue:I

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValue:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v1, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mPropertyName:Ljava/lang/String;

    const-string v2, "Cannot read opt property "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "OptProp"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValue:I

    :cond_2
    :goto_0
    iget p0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValue:I

    return p0
.end method

.method public final isFalse()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mCondition:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->getValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mCondition:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->getValue()I

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldEnableWithOptOutOverrideAndProperty(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mCondition:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->getValue()I

    move-result p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final shouldEnableWithOverrideAndProperty(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mCondition:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->getValue()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->getValue()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    return v0
.end method
