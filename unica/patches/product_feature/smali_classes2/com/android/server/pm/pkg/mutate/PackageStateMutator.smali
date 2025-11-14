.class public final Lcom/android/server/pm/pkg/mutate/PackageStateMutator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sStateChangeSequence:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final mActiveStateFunction:Ljava/util/function/Function;

.field public final mChangedStates:Landroid/util/ArraySet;

.field public final mDisabledStateFunction:Ljava/util/function/Function;

.field public final mStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->sStateChangeSequence:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mChangedStates:Landroid/util/ArraySet;

    iput-object p1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mActiveStateFunction:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mDisabledStateFunction:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mActiveStateFunction:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mChangedStates:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    iput-object p1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method
