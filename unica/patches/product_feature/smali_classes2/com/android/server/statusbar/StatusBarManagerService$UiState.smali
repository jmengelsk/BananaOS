.class public final Lcom/android/server/statusbar/StatusBarManagerService$UiState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAppearance:I

.field public mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field public mBehavior:I

.field public mDisabled1:I

.field public mDisabled2:I

.field public mImeBackDisposition:I

.field public mImeWindowVis:I

.field public mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

.field public mNavbarColorManagedByIme:Z

.field public mPackageName:Ljava/lang/String;

.field public mRequestedVisibleTypes:I

.field public mShowImeSwitcher:Z

.field public mTransientBarTypes:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    new-array v1, v0, [Lcom/android/internal/view/AppearanceRegion;

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v1

    iput v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mRequestedVisibleTypes:I

    const-string/jumbo v1, "none"

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mPackageName:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    new-array v0, v0, [Lcom/android/internal/statusbar/LetterboxDetails;

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    return-void
.end method
