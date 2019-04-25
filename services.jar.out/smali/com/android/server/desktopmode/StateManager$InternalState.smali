.class Lcom/android/server/desktopmode/StateManager$InternalState;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Lcom/android/server/desktopmode/State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InternalState"
.end annotation


# instance fields
.field private mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCoverSupportState:I

.field private mCurrentUserId:I

.field private mDesktopDisplayId:I

.field private mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

.field private mDockFastChargingState:I

.field private mDockLowChargerState:I

.field private mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

.field private mEmergencyModeEnabled:Z

.field private mForcedInternalScreenModeEnabled:Z

.field private mIsExternalDisplayConnected:Z

.field private mIsMouseConnected:Z

.field private mIsPogoKeyboardConnected:Z

.field private mIsWiredCharging:Z

.field private mIsWiredFastCharging:Z

.field private mModeChangeLocked:Z

.field private mOverheated:Z

.field private mPackageState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

.field private mSeq:I

.field private mTouchpadAvailable:Z

.field private mTouchpadEnabled:Z


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredFastCharging:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mOverheated:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockFastChargingState:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    new-instance v0, Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-direct {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    invoke-direct {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    return-void
.end method

.method constructor <init>(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredFastCharging:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mOverheated:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockFastChargingState:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    new-instance v0, Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-direct {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    invoke-direct {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredFastCharging:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredFastCharging:Z

    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mOverheated:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mOverheated:Z

    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockFastChargingState:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockFastChargingState:I

    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/DisplayInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/desktopmode/StateManager$InternalState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/desktopmode/StateManager$InternalState;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/DisplayInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/desktopmode/StateManager$InternalState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockFastChargingState:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/desktopmode/StateManager$InternalState;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockFastChargingState:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/desktopmode/StateManager$InternalState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/desktopmode/StateManager$InternalState;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/desktopmode/StateManager$InternalState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/desktopmode/StateManager$InternalState;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/server/desktopmode/StateManager$InternalState;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/samsung/android/desktopmode/SemDesktopModeState;)Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/desktopmode/StateManager$InternalState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/desktopmode/StateManager$InternalState;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mOverheated:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mOverheated:Z

    return p1
.end method

.method static synthetic access$2208(Lcom/android/server/desktopmode/StateManager$InternalState;)I
    .locals 2

    iget v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredFastCharging:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredFastCharging:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/HardwareManager$DockState;)Lcom/android/server/desktopmode/HardwareManager$DockState;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/HardwareManager$DockState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/HardwareManager$DockState;)Lcom/android/server/desktopmode/HardwareManager$DockState;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    return p1
.end method


# virtual methods
.method public getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    return-object v0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object v0
.end method

.method public getCoverSupportState()I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    return v0
.end method

.method public getCurrentUserId()I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    return v0
.end method

.method public getDesktopDisplayId()I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    return v0
.end method

.method public getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    return-object v0
.end method

.method public getDockFastChargingState()I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockFastChargingState:I

    return v0
.end method

.method public getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    return-object v0
.end method

.method public getPackageState()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    return-object v0
.end method

.method public getPreviousDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    return-object v0
.end method

.method public isCoverSupportStatePartial()Z
    .locals 2

    iget v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDockLowChargerConnected()Z
    .locals 2

    iget v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEmergencyModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    return v0
.end method

.method public isExternalDisplayConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    return v0
.end method

.method public isForcedInternalScreenModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    return v0
.end method

.method public isModeChangeLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    return v0
.end method

.method public isMouseConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    return v0
.end method

.method public isOverheated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mOverheated:Z

    return v0
.end method

.method public isPackagesAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isPogoKeyboardConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    return v0
.end method

.method public isTouchpadAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    return v0
.end method

.method public isTouchpadEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    return v0
.end method

.method public isWiredCharging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    return v0
.end method

.method public isWiredFastCharging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredFastCharging:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "State{s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    const/16 v2, 0x20

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    if-eqz v1, :cond_1

    const-string v1, " pogoKeyboard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    if-eqz v1, :cond_2

    const-string v1, " mouse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v1, :cond_4

    const-string v1, " cover.t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".ft"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getFriendsType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    :goto_0
    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->coverSupportStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockFastChargingState:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_7

    const-string v1, " dockFastCharging."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockFastChargingState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->dockTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, " prev/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->dockTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    if-eq v1, v4, :cond_a

    const-string v1, " desktopDisplay."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_a
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    if-eqz v1, :cond_b

    const-string v1, " forcedInternalScreenMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    if-ne v1, v3, :cond_c

    const-string v1, " dockLowCharger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    if-eqz v1, :cond_d

    const-string v1, " modeChangeLocked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    if-eqz v1, :cond_e

    const-string v1, " wiredCharging"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredFastCharging:Z

    if-eqz v1, :cond_f

    const-string v1, " wiredFastCharging"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {p0}, Lcom/android/server/desktopmode/StateManager$InternalState;->isPackagesAvailable()Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, " package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_10
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    if-eqz v1, :cond_11

    const-string v1, " touchpadAvailable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    if-eqz v1, :cond_12

    const-string v1, " touchpadEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
