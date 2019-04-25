.class public Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
.super Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;
.source "RemoteInjectionService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field static final TAG:Ljava/lang/String; = "RemoteInjection"

.field private static mSelf:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;


# instance fields
.field final mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field mRemoteControlDisabled:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteScreenHeight:I

.field private mRemoteScreenWidth:I

.field private mSessionOwnerUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mSelf:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v4, v1, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v4, v1, Landroid/graphics/Point;->x:I

    :goto_1
    iput v4, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    if-eqz v2, :cond_3

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    iget v3, v1, Landroid/graphics/Point;->x:I

    goto :goto_3

    :cond_3
    :goto_2
    iget v3, v1, Landroid/graphics/Point;->y:I

    :goto_3
    iput v3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mSessionOwnerUid:I

    sput-object p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mSelf:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    return-void
.end method

.method private enforceRemoteControlPermission(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    const-string v3, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceDoPoOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_REMOTE_CONTROL"

    const-string v3, "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    return-object v1
.end method

.method private enforceRemoteControlPermissionNoActiveAdmin()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_REMOTE_CONTROL"

    const-string v3, "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private enforceSystemUser()V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mSelf:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    return-object v0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method private injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z
    .locals 26

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v23

    if-nez v4, :cond_0

    const/16 v4, 0x101

    :cond_0
    move/from16 v24, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    :cond_1
    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    move-wide v0, v2

    :cond_2
    new-instance v25, Landroid/view/KeyEvent;

    or-int/lit8 v15, v23, 0x8

    move-object/from16 v4, v25

    move-wide v5, v0

    move-wide v7, v2

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v12, v20

    move/from16 v13, v21

    move/from16 v14, v22

    move/from16 v16, v24

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    if-eqz p2, :cond_3

    const/4 v7, 0x2

    goto :goto_0

    :cond_3
    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v5, v4, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v5

    return v5
.end method

.method private injectPointerEventInternal(Landroid/view/MotionEvent;Z)Z
    .locals 3

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v1

    return v1
.end method

.method private injectTrackballEventInternal(Landroid/view/MotionEvent;Z)Z
    .locals 3

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    const v1, 0x10004

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    if-eqz p2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v1

    return v1
.end method

.method private isRemoteControlDisabledInternal(II)Z
    .locals 3

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_2

    const/4 v2, 0x0

    return v2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method private isRemoteInjectionDisabled(I)Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-direct {p0, v3, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlDisabledInternal(II)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "RemoteInjection"

    const-string v5, "Failed to get top activity user id"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    const-string v7, "RemoteInjection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hwWidth "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ",hwHeight : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x2

    if-eqz v6, :cond_1

    if-ne v6, v7, :cond_0

    goto :goto_0

    :cond_0
    iget v8, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v8, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    :goto_1
    int-to-float v8, v8

    move v14, v8

    if-eqz v6, :cond_3

    if-ne v6, v7, :cond_2

    goto :goto_2

    :cond_2
    iget v7, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    goto :goto_3

    :cond_3
    :goto_2
    iget v7, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    :goto_3
    int-to-float v7, v7

    move v13, v7

    const-string v7, "RemoteInjection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "remoteWidth "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ",remoteHeight : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v12, v15, [Landroid/view/MotionEvent$PointerCoords;

    new-array v11, v15, [Landroid/view/MotionEvent$PointerProperties;

    new-instance v7, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v7}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    move-object v9, v7

    new-instance v7, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v7}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    move-object v10, v7

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v15, :cond_4

    invoke-virtual {v1, v7, v9}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    invoke-virtual {v1, v7, v10}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    iget v8, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    div-float v16, v4, v14

    mul-float v8, v8, v16

    iput v8, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v8, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    div-float v16, v5, v13

    mul-float v8, v8, v16

    iput v8, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    aput-object v9, v12, v7

    aput-object v10, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v25

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v26

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-wide/from16 v9, v16

    move-object/from16 v29, v11

    move/from16 v11, v18

    move-object/from16 v30, v12

    move v12, v15

    move/from16 v31, v13

    move-object/from16 v13, v29

    move/from16 v32, v14

    move-object/from16 v14, v30

    move/from16 v33, v15

    move/from16 v15, v19

    move/from16 v16, v20

    move/from16 v17, v21

    move/from16 v18, v22

    move/from16 v19, v23

    move/from16 v20, v24

    move/from16 v21, v25

    move/from16 v22, v26

    invoke-static/range {v7 .. v22}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public allowRemoteControl(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceRemoteControlPermission(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "allowRemoteControl"

    invoke-virtual {v4, v1, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    move v0, v4

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "RemoteInjection"

    const-string v6, "RemoteInjection.allowRemoteControl() exception : "

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Permission Denial: can\'t dump Enterprise Device Manager Service"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "RemoteControl disallowed userId : "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    const-string v3, "None"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-wide v9, v1

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a keystroke event into the UI failed"

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v1, 0x0

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceRemoteControlPermissionNoActiveAdmin()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "RemoteInjection"

    const-string v2, "Remote Control is disabled, couldnt inject key event"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a keystroke event into the UI failed"

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v11, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RemoteInjection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error injecting trackball event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v11, :cond_2

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a keystroke event into the UI succeeded"

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a keystroke event into the UI failed"

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :goto_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11
.end method

.method public injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .locals 13

    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceRemoteControlPermissionNoActiveAdmin()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RemoteInjection"

    const-string v2, "Remote Control is disabled, couldnt inject pointer event"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a pointer (touch) event into the UI failed"

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    move-object v1, v2

    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectPointerEventInternal(Landroid/view/MotionEvent;Z)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RemoteInjection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error injecting trackball event : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v12, v1

    if-eqz v11, :cond_1

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a pointer (touch) event into the UI succeeded"

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a pointer (touch) event into the UI failed"

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :goto_1
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11
.end method

.method public injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .locals 13

    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceRemoteControlPermissionNoActiveAdmin()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RemoteInjection"

    const-string v2, "Remote Control is disabled, couldnt inject track ball event"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a trackball event into the UI failed"

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    move-object v1, v2

    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectTrackballEventInternal(Landroid/view/MotionEvent;Z)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RemoteInjection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error injecting trackball event : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v12, v1

    if-eqz v11, :cond_1

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a trackball event into the UI succeeded"

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a trackball event into the UI failed"

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :goto_1
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11
.end method

.method public isRemoteControlAllowed(I)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "RESTRICTION"

    const-string v3, "allowRemoteControl"

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "RemoteInjection"

    const-string v3, "RemoteInjection.isRemoteControlAllowed() exception : "

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v0
.end method

.method public isRemoteControlAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result v1

    return v1
.end method

.method public isRemoteControlDisabled(I)Z
    .locals 2

    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mSessionOwnerUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mSessionOwnerUid:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlDisabledInternal(II)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public systemReady()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;-><init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public updateRemoteScreenDimensionsAndCallerUid(III)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceSystemUser()V

    const-string v0, "RemoteInjection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteInjectionService: updateRemoteScreenDimensions() width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    :cond_0
    const-string v2, "RemoteInjection"

    const-string v3, "RemoteInjectionService: updateRemoteScreenDimensions() : display is null"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget p1, v1, Landroid/graphics/Point;->x:I

    iget p2, v1, Landroid/graphics/Point;->y:I

    :cond_1
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    iput p2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    iput p3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mSessionOwnerUid:I

    return-void
.end method
