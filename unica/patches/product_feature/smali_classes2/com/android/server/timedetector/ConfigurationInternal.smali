.class public final Lcom/android/server/timedetector/ConfigurationInternal;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAutoDetectionEnabledSetting:Z

.field public final mAutoDetectionSupported:Z

.field public final mAutoSuggestionLowerBound:Ljava/time/Instant;

.field public final mManualSuggestionLowerBound:Ljava/time/Instant;

.field public final mOriginPriorities:[I

.field public final mSuggestionUpperBound:Ljava/time/Instant;

.field public final mSystemClockConfidenceThresholdMillis:I

.field public final mSystemClockUpdateThresholdMillis:I

.field public final mUserConfigAllowed:Z

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mAutoDetectionSupported:Z

    iput-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionSupported:Z

    iget v0, p1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mSystemClockUpdateThresholdMillis:I

    iput v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockUpdateThresholdMillis:I

    iget v0, p1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mSystemClockConfidenceThresholdMillis:I

    iput v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockConfidenceThresholdMillis:I

    iget-object v0, p1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mAutoSuggestionLowerBound:Ljava/time/Instant;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoSuggestionLowerBound:Ljava/time/Instant;

    iget-object v0, p1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mManualSuggestionLowerBound:Ljava/time/Instant;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mManualSuggestionLowerBound:Ljava/time/Instant;

    iget-object v0, p1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mSuggestionUpperBound:Ljava/time/Instant;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSuggestionUpperBound:Ljava/time/Instant;

    iget-object v0, p1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mOriginPriorities:[I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mOriginPriorities:[I

    iget-boolean v0, p1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabledSetting:Z

    iput-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    iget v0, p1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserId:I

    iput v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    iget-boolean p1, p1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    iput-boolean p1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    return-void
.end method


# virtual methods
.method public final createCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;
    .locals 6

    new-instance v0, Landroid/app/time/TimeCapabilitiesAndConfig;

    iget v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    new-instance v2, Landroid/app/time/TimeCapabilities$Builder;

    invoke-direct {v2, v1}, Landroid/app/time/TimeCapabilities$Builder;-><init>(Landroid/os/UserHandle;)V

    iget-boolean v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    iget-boolean v3, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionSupported:Z

    const/16 v4, 0x28

    const/16 v5, 0x14

    if-nez v3, :cond_0

    const/16 v3, 0xa

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/app/time/TimeCapabilities$Builder;->setConfigureAutoDetectionEnabledCapability(I)Landroid/app/time/TimeCapabilities$Builder;

    if-nez v1, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/timedetector/ConfigurationInternal;->getAutoDetectionEnabledBehavior()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v4, 0x1e

    :cond_3
    :goto_1
    invoke-virtual {v2, v4}, Landroid/app/time/TimeCapabilities$Builder;->setSetManualTimeCapability(I)Landroid/app/time/TimeCapabilities$Builder;

    invoke-virtual {v2}, Landroid/app/time/TimeCapabilities$Builder;->build()Landroid/app/time/TimeCapabilities;

    move-result-object v1

    new-instance v2, Landroid/app/time/TimeConfiguration$Builder;

    invoke-direct {v2}, Landroid/app/time/TimeConfiguration$Builder;-><init>()V

    iget-boolean p0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    invoke-virtual {v2, p0}, Landroid/app/time/TimeConfiguration$Builder;->setAutoDetectionEnabled(Z)Landroid/app/time/TimeConfiguration$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/time/TimeConfiguration$Builder;->build()Landroid/app/time/TimeConfiguration;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/app/time/TimeCapabilitiesAndConfig;-><init>(Landroid/app/time/TimeCapabilities;Landroid/app/time/TimeConfiguration;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/android/server/timedetector/ConfigurationInternal;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/android/server/timedetector/ConfigurationInternal;

    iget-boolean v0, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionSupported:Z

    iget-boolean v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionSupported:Z

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    iget-boolean v1, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    iget v1, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    iget-boolean v1, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockUpdateThresholdMillis:I

    iget v1, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockUpdateThresholdMillis:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockConfidenceThresholdMillis:I

    iget v1, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockConfidenceThresholdMillis:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoSuggestionLowerBound:Ljava/time/Instant;

    iget-object v1, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoSuggestionLowerBound:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mManualSuggestionLowerBound:Ljava/time/Instant;

    iget-object v1, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mManualSuggestionLowerBound:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSuggestionUpperBound:Ljava/time/Instant;

    iget-object v1, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mSuggestionUpperBound:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mOriginPriorities:[I

    iget-object p1, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mOriginPriorities:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getAutoDetectionEnabledBehavior()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionSupported:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockUpdateThresholdMillis:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockConfidenceThresholdMillis:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoSuggestionLowerBound:Ljava/time/Instant;

    iget-object v8, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mManualSuggestionLowerBound:Ljava/time/Instant;

    iget-object v9, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSuggestionUpperBound:Ljava/time/Instant;

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mOriginPriorities:[I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mOriginPriorities:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/server/timedetector/ConfigurationInternal$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string/jumbo v1, "]"

    const-string v2, ","

    const-string/jumbo v3, "["

    invoke-static {v2, v3, v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ConfigurationInternal{mAutoDetectionSupported="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSystemClockUpdateThresholdMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockUpdateThresholdMillis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSystemClockConfidenceThresholdMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockConfidenceThresholdMillis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mAutoSuggestionLowerBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoSuggestionLowerBound:Ljava/time/Instant;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoSuggestionLowerBound:Ljava/time/Instant;

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "), mManualSuggestionLowerBound="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mManualSuggestionLowerBound:Ljava/time/Instant;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mManualSuggestionLowerBound:Ljava/time/Instant;

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "), mSuggestionUpperBound="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSuggestionUpperBound:Ljava/time/Instant;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSuggestionUpperBound:Ljava/time/Instant;

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "), mOriginPriorities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mAutoDetectionEnabled="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mUserId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mUserConfigAllowed="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
