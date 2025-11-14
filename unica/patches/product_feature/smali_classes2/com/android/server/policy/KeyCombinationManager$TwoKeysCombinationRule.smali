.class public abstract Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mKeyCode1:I

.field public final mKeyCode2:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    iput p2, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public cancel(Landroid/view/KeyEvent;Z)V
    .locals 0

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    iget v1, p1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    iget v3, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    iget p0, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    iget p1, p1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    if-ne p0, v1, :cond_1

    if-eq v3, p1, :cond_2

    :cond_1
    if-ne p0, p1, :cond_3

    if-ne v3, v1, :cond_3

    :cond_2
    return v0

    :cond_3
    return v2
.end method

.method public abstract execute()V
.end method

.method public getKeyInterceptDelayMs()J
    .locals 2

    const-wide/16 v0, 0x96

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    add-int/2addr v0, p0

    return v0
.end method

.method public preCondition()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final shouldInterceptKey(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->preCondition()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    invoke-static {p0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
