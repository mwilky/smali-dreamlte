.class Lcom/android/server/display/WFDUibcManager$EventDispatcher;
.super Lcom/android/server/display/WFDUibcManager$EventQueue;
.source "WFDUibcManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventDispatcher"
.end annotation


# static fields
.field private static final DEFAULT_DEVICE_ID:I = 0x0

.field private static final UIBC_META_SHIFT_ON:I = 0x800


# instance fields
.field public volatile isRunning:Z

.field private mCapsLock:Z

.field private mKeyInfoTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/display/WFDUibcManager$KeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

.field private mLastBroadcastTime:J

.field private mMetaFlag:I

.field private mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

.field private mRotationInput:Ljava/lang/Integer;

.field private mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

.field private mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

.field private mTouchPointerTable:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/display/WFDUibcManager$TouchPointer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/WFDUibcManager;


# direct methods
.method constructor <init>(Lcom/android/server/display/WFDUibcManager;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/WFDUibcManager$EventQueue;-><init>(Lcom/android/server/display/WFDUibcManager;Lcom/android/server/display/WFDUibcManager$1;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->isRunning:Z

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInfoTable:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    iput-boolean v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mCapsLock:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mLastBroadcastTime:J

    return-void
.end method

.method private getMetaFlag(IZ)V
    .locals 9

    const/16 v0, 0x77

    const/4 v1, 0x1

    const/16 v2, 0x72

    const/16 v3, 0x71

    const/16 v4, 0x3a

    const/16 v5, 0x39

    const/16 v6, 0x3c

    const/16 v7, 0x3b

    if-eqz p2, :cond_9

    if-eq p1, v7, :cond_0

    if-ne p1, v6, :cond_2

    :cond_0
    iget v8, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/2addr v1, v8

    iput v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v7, :cond_1

    iget v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_1
    if-ne p1, v6, :cond_2

    iget v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_2
    if-eq p1, v5, :cond_3

    if-ne p1, v4, :cond_5

    :cond_3
    iget v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v5, :cond_4

    iget v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_4
    if-ne p1, v4, :cond_5

    iget v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_5
    if-eq p1, v3, :cond_6

    if-ne p1, v2, :cond_8

    :cond_6
    iget v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v3, :cond_7

    iget v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_7
    if-ne p1, v2, :cond_8

    iget v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_8
    if-ne p1, v0, :cond_15

    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    goto/16 :goto_0

    :cond_9
    if-eq p1, v7, :cond_a

    if-ne p1, v6, :cond_c

    :cond_a
    iget v8, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v8, v8, -0x2

    iput v8, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v7, :cond_b

    iget v7, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v7, v7, -0x41

    iput v7, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_b
    if-ne p1, v6, :cond_c

    iget v6, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v6, v6, -0x81

    iput v6, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_c
    if-eq p1, v5, :cond_d

    if-ne p1, v4, :cond_f

    :cond_d
    iget v6, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v6, v6, -0x3

    iput v6, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v5, :cond_e

    iget v5, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v5, v5, -0x11

    iput v5, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_e
    if-ne p1, v4, :cond_f

    iget v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v4, v4, -0x21

    iput v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_f
    if-eq p1, v3, :cond_10

    if-ne p1, v2, :cond_12

    :cond_10
    iget v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v4, v4, -0x1001

    iput v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v3, :cond_11

    iget v3, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_11
    if-ne p1, v2, :cond_12

    iget v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v2, v2, -0x4001

    iput v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_12
    if-ne p1, v0, :cond_13

    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_13
    const/16 v0, 0x73

    if-ne p1, v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mCapsLock:Z

    if-nez v0, :cond_14

    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const/high16 v2, 0x100000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    iput-boolean v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mCapsLock:Z

    goto :goto_0

    :cond_14
    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mCapsLock:Z

    :cond_15
    :goto_0
    return-void
.end method

.method private handleKeyEvent()V
    .locals 25

    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WFDUibcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received KeyEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v1}, Lcom/android/server/display/WFDUibcManager;->access$600(Lcom/android/server/display/WFDUibcManager;)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v1}, Lcom/android/server/display/WFDUibcManager;->access$300(Lcom/android/server/display/WFDUibcManager;)V

    :cond_1
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    and-int/lit16 v8, v8, 0x800

    const/4 v9, 0x1

    if-lez v8, :cond_2

    or-int/lit16 v1, v1, 0x80

    or-int/2addr v1, v9

    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v10, v8, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    and-int/lit16 v10, v10, -0x801

    iput v10, v8, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    :cond_2
    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$KeyInput;->action:I

    const/4 v10, 0x0

    if-nez v8, :cond_8

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "WFDUibcManager"

    const-string v11, "KeyEvent.ACTION_DOWN"

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v11, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v11, v11, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInfoTable:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    const/16 v11, 0xf

    if-ge v8, v11, :cond_4

    new-instance v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;

    const/4 v11, 0x0

    invoke-direct {v8, v11}, Lcom/android/server/display/WFDUibcManager$KeyInfo;-><init>(Lcom/android/server/display/WFDUibcManager$1;)V

    iput-wide v4, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyTime:J

    iput v7, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyFlag:I

    iput v10, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyRepeatCount:I

    iget-object v11, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v12, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v12, v12, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-wide v2, v4

    const/4 v6, 0x0

    goto :goto_0

    :cond_5
    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v11, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v11, v11, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;

    iget v11, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyFlag:I

    or-int/2addr v11, v7

    iput v11, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyFlag:I

    iget v11, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyRepeatCount:I

    add-int/2addr v11, v9

    iput v11, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyRepeatCount:I

    iget v11, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyRepeatCount:I

    if-lt v11, v9, :cond_6

    iget v11, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyFlag:I

    or-int/lit16 v11, v11, 0x80

    iput v11, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyFlag:I

    :cond_6
    iget-wide v2, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyTime:J

    iget v11, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyFlag:I

    or-int/2addr v7, v11

    iget v6, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyRepeatCount:I

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "WFDUibcManager"

    const-string v12, "Long press detected"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    invoke-direct {v0, v8, v9}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->getMetaFlag(IZ)V

    goto :goto_2

    :cond_8
    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$KeyInput;->action:I

    if-ne v8, v9, :cond_b

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "WFDUibcManager"

    const-string v9, "KeyEvent.ACTION_UP"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;

    iget-wide v2, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyTime:J

    iget v9, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyFlag:I

    or-int/2addr v7, v9

    const/4 v6, 0x0

    iget-object v9, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v11, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v11, v11, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_a
    move-wide v2, v4

    const/4 v6, 0x0

    :goto_1
    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    invoke-direct {v0, v8, v10}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->getMetaFlag(IZ)V

    :cond_b
    :goto_2
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "WFDUibcManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KeyCode: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v11, v11, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " DownTime: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " Flag: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " RepeatCnt: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "mMetaFlag: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-nez v1, :cond_d

    iget v1, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_d
    const-wide/16 v8, 0x1

    sub-long v13, v2, v8

    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v15, v8, Lcom/android/server/display/WFDUibcManager$KeyInput;->action:I

    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v9, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$600(Lcom/android/server/display/WFDUibcManager;)I

    move-result v22

    const/16 v23, 0x101

    const/16 v24, 0x0

    move-wide v11, v2

    move/from16 v16, v8

    move/from16 v17, v6

    move/from16 v18, v1

    move/from16 v21, v7

    invoke-static/range {v11 .. v24}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v8

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v9

    invoke-virtual {v9, v8, v10}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v9

    if-eqz v9, :cond_e

    const-string v9, "WFDUibcManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InjectKeyEvent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method private handleRotationEvent()V
    .locals 6

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WFDUibcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Rotation Event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v0}, Lcom/android/server/display/WFDUibcManager;->access$700(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v1}, Lcom/android/server/display/WFDUibcManager;->access$700(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "accelerometer_rotation"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v1}, Lcom/android/server/display/WFDUibcManager;->access$700(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "user_rotation"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current rotation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->access$200(Lcom/android/server/display/WFDUibcManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "WFDUibcManager"

    const-string v3, "Setting SPECIAL rotation"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    mul-int/lit8 v2, v1, 0x5a

    iget-object v3, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x168

    rem-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    :cond_4
    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x2d

    const/16 v5, 0x13b

    if-le v2, v5, :cond_5

    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v3, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v4, :cond_7

    :cond_6
    const/4 v1, 0x0

    :cond_7
    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x87

    if-le v2, v4, :cond_8

    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v3, :cond_8

    const/4 v1, 0x1

    :cond_8
    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0xe1

    if-le v2, v3, :cond_9

    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v4, :cond_9

    const/4 v1, 0x2

    :cond_9
    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v4, :cond_a

    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v5, :cond_a

    const/4 v1, 0x3

    :cond_a
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rotation set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->access$700(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_rotation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->access$700(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private handleScrollEvent()V
    .locals 27

    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WFDUibcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received Scroll Event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v1}, Lcom/android/server/display/WFDUibcManager;->access$600(Lcom/android/server/display/WFDUibcManager;)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v1}, Lcom/android/server/display/WFDUibcManager;->access$300(Lcom/android/server/display/WFDUibcManager;)V

    :cond_1
    const-wide/16 v1, 0x0

    iget-object v3, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

    iget v3, v3, Lcom/android/server/display/WFDUibcManager$ScrollInput;->action:I

    const/4 v4, 0x7

    const/4 v5, 0x6

    if-eq v3, v5, :cond_2

    iget-object v3, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

    iget v3, v3, Lcom/android/server/display/WFDUibcManager$ScrollInput;->action:I

    if-ne v3, v4, :cond_6

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

    iget v3, v3, Lcom/android/server/display/WFDUibcManager$ScrollInput;->scrollBit:I

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

    iget v6, v6, Lcom/android/server/display/WFDUibcManager$ScrollInput;->direction:I

    if-nez v6, :cond_3

    mul-int/lit8 v3, v3, -0x1

    :cond_3
    const/4 v6, 0x1

    new-array v7, v6, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    new-array v7, v6, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    iget-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v8, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v8}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v7, v7, v9

    iput v9, v7, Landroid/view/MotionEvent$PointerProperties;->id:I

    iget-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v7, v7, v9

    const/4 v8, 0x3

    iput v8, v7, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    iget-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v10, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v10}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v10, v7, v9

    iget-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

    iget v7, v7, Lcom/android/server/display/WFDUibcManager$ScrollInput;->action:I

    const/4 v10, 0x0

    if-ne v7, v5, :cond_4

    iget-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, v9

    invoke-virtual {v7, v9, v10}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, v9

    int-to-float v10, v3

    invoke-virtual {v7, v6, v10}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_0

    :cond_4
    iget-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

    iget v7, v7, Lcom/android/server/display/WFDUibcManager$ScrollInput;->action:I

    if-ne v7, v4, :cond_5

    iget-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, v9

    int-to-float v11, v3

    invoke-virtual {v7, v9, v11}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, v9

    invoke-virtual {v7, v6, v10}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    :cond_5
    :goto_0
    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v9

    const/16 v7, 0x8

    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-virtual {v6, v7, v10}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v9

    const/4 v7, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7, v10}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v9

    const v7, 0x3d23d70a    # 0.04f

    invoke-virtual {v6, v8, v7}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v9

    const/4 v7, 0x4

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v6, v7, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v9

    const/4 v7, 0x5

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {v6, v7, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v9

    const/high16 v7, 0x41300000    # 11.0f

    invoke-virtual {v6, v5, v7}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v9

    invoke-virtual {v5, v4, v7}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const-wide/16 v4, 0xa

    sub-long v10, v1, v4

    sub-long v12, v1, v4

    const/16 v14, 0x8

    const/4 v15, 0x1

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v6}, Lcom/android/server/display/WFDUibcManager;->access$600(Lcom/android/server/display/WFDUibcManager;)I

    move-result v20

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x2002

    const/high16 v26, 0x8000000

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    invoke-static/range {v10 .. v26}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    invoke-virtual {v5, v4, v9}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "WFDUibcManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InjectScrollEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method private handleTouchEvent()V
    .locals 34

    move-object/from16 v1, p0

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WFDUibcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received TouchEvent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v0}, Lcom/android/server/display/WFDUibcManager;->access$600(Lcom/android/server/display/WFDUibcManager;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v0}, Lcom/android/server/display/WFDUibcManager;->access$300(Lcom/android/server/display/WFDUibcManager;)V

    :cond_1
    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v0}, Lcom/android/server/display/WFDUibcManager;->access$000(Lcom/android/server/display/WFDUibcManager;)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_6

    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v0}, Lcom/android/server/display/WFDUibcManager;->access$700(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PresentDisplayID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->access$000(Lcom/android/server/display/WFDUibcManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", UIBCMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->access$800(Lcom/android/server/display/WFDUibcManager;)Lcom/android/server/display/WFDUibcManager$UIBCMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", PresentationOwner : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->access$000(Lcom/android/server/display/WFDUibcManager;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/hardware/display/DisplayManager;->semGetPresentationOwner(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->access$800(Lcom/android/server/display/WFDUibcManager;)Lcom/android/server/display/WFDUibcManager$UIBCMode;

    move-result-object v2

    sget-object v3, Lcom/android/server/display/WFDUibcManager$UIBCMode;->PRESENTATION:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    if-eq v2, v3, :cond_4

    iget-object v2, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->access$000(Lcom/android/server/display/WFDUibcManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->semGetPresentationOwner(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->access$000(Lcom/android/server/display/WFDUibcManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->semGetPresentationOwner(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->access$300(Lcom/android/server/display/WFDUibcManager;)V

    goto :goto_0

    :cond_4
    iget-object v2, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->access$800(Lcom/android/server/display/WFDUibcManager;)Lcom/android/server/display/WFDUibcManager$UIBCMode;

    move-result-object v2

    sget-object v3, Lcom/android/server/display/WFDUibcManager$UIBCMode;->PRESENTATION:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    if-ne v2, v3, :cond_6

    iget-object v2, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->access$000(Lcom/android/server/display/WFDUibcManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->semGetPresentationOwner(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->access$000(Lcom/android/server/display/WFDUibcManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->semGetPresentationOwner(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->access$300(Lcom/android/server/display/WFDUibcManager;)V

    :cond_6
    :goto_0
    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v0}, Lcom/android/server/display/WFDUibcManager;->access$700(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget v0, v0, Lcom/android/server/display/WFDUibcManager$TouchInput;->action:I

    iget-object v3, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move v7, v6

    move v6, v5

    move v5, v3

    move v3, v0

    move v0, v4

    :goto_1
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointers:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v0, v8, :cond_22

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "WFDUibcManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Input Pointer ID : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", X: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", Y: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iget v12, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    const v13, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v12, v13

    iput v12, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iget v12, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v12, v13

    iput v12, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    sget-object v8, Lcom/android/server/display/WFDUibcManager$2;->$SwitchMap$com$android$server$display$WFDUibcManager$UIBCMode:[I

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$800(Lcom/android/server/display/WFDUibcManager;)Lcom/android/server/display/WFDUibcManager$UIBCMode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/display/WFDUibcManager$UIBCMode;->ordinal()I

    move-result v12

    aget v8, v8, v12

    const/high16 v12, 0x40000000    # 2.0f

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "WFDUibcManager"

    const-string v9, "UIBCMode is PORTRAIT_DISPLAY"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget v8, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v10, :cond_9

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1200(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    mul-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    div-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1400(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v9, v13

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v13}, Lcom/android/server/display/WFDUibcManager;->access$1400(Lcom/android/server/display/WFDUibcManager;)F

    move-result v13

    sub-float/2addr v13, v8

    div-float/2addr v13, v12

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    iget-object v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v14, v14, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v14, v14, v0

    iget v14, v14, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float v6, v12, v14

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    sub-float v14, v9, v13

    div-float/2addr v14, v8

    mul-float v7, v12, v14

    goto/16 :goto_2

    :cond_9
    iget v8, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v11, :cond_c

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$900(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1000(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_a

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1200(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    mul-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    div-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1400(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v9, v13

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v13}, Lcom/android/server/display/WFDUibcManager;->access$1400(Lcom/android/server/display/WFDUibcManager;)F

    move-result v13

    sub-float/2addr v13, v8

    div-float/2addr v13, v12

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    iget-object v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v14, v14, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v14, v14, v0

    iget v14, v14, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float v6, v12, v14

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    sub-float v14, v9, v13

    div-float/2addr v14, v8

    mul-float v7, v12, v14

    goto :goto_2

    :cond_a
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$900(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1000(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_b

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1400(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    mul-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    div-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1200(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float/2addr v9, v13

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v13}, Lcom/android/server/display/WFDUibcManager;->access$1200(Lcom/android/server/display/WFDUibcManager;)F

    move-result v13

    sub-float/2addr v13, v8

    div-float/2addr v13, v12

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    sub-float v14, v9, v13

    div-float/2addr v14, v8

    mul-float v6, v12, v14

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    iget-object v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v14, v14, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v14, v14, v0

    iget v14, v14, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float v7, v12, v14

    goto :goto_2

    :cond_b
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float v6, v8, v9

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float v7, v8, v9

    :cond_c
    :goto_2
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iput v6, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iput v7, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    goto/16 :goto_5

    :pswitch_1
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$700(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v12, "user_rotation"

    invoke-static {v8, v12, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v12

    if-eqz v12, :cond_d

    const-string v12, "WFDUibcManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UIBCMode is KDDISERVICE, rotation(0/0, 1/90, 2/180, 3/270) : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-nez v8, :cond_e

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v12, v13

    sub-float v6, v9, v12

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v12, v12, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v12, v12, v0

    iget v12, v12, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float v7, v9, v12

    goto/16 :goto_3

    :cond_e
    if-ne v8, v11, :cond_f

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v12, v12, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v12, v12, v0

    iget v12, v12, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float v6, v9, v12

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v12, v12, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v12, v12, v0

    iget v12, v12, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float v7, v9, v12

    goto :goto_3

    :cond_f
    if-ne v8, v10, :cond_10

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v12, v12, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v12, v12, v0

    iget v12, v12, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float v6, v9, v12

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float/2addr v12, v13

    sub-float v7, v9, v12

    goto :goto_3

    :cond_10
    if-ne v8, v9, :cond_11

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float/2addr v12, v13

    sub-float v6, v9, v12

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v12, v13

    sub-float v7, v9, v12

    :cond_11
    :goto_3
    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iput v6, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iput v7, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    goto/16 :goto_5

    :pswitch_2
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "WFDUibcManager"

    const-string v9, "UIBCMode is SIDESYNC/PRESENTATION"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iget v9, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    mul-float/2addr v9, v12

    iput v9, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iget v9, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    mul-float/2addr v9, v12

    iput v9, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    goto/16 :goto_5

    :pswitch_3
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v8

    if-eqz v8, :cond_13

    const-string v8, "WFDUibcManager"

    const-string v9, "UIBCMode is DEFAULT"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget v8, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v10, :cond_16

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$900(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1000(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_14

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1200(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    mul-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    div-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1400(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float/2addr v9, v13

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v13}, Lcom/android/server/display/WFDUibcManager;->access$1400(Lcom/android/server/display/WFDUibcManager;)F

    move-result v13

    sub-float/2addr v13, v8

    div-float/2addr v13, v12

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    sub-float v14, v9, v13

    div-float/2addr v14, v8

    mul-float v6, v12, v14

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    iget-object v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v14, v14, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v14, v14, v0

    iget v14, v14, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float v7, v12, v14

    goto/16 :goto_4

    :cond_14
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$900(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1000(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_15

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1400(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    mul-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    div-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1200(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v9, v13

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v13}, Lcom/android/server/display/WFDUibcManager;->access$1200(Lcom/android/server/display/WFDUibcManager;)F

    move-result v13

    sub-float/2addr v13, v8

    div-float/2addr v13, v12

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    iget-object v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v14, v14, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v14, v14, v0

    iget v14, v14, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float v6, v12, v14

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    sub-float v14, v9, v13

    div-float/2addr v14, v8

    mul-float v7, v12, v14

    goto/16 :goto_4

    :cond_15
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float v6, v8, v9

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float v7, v8, v9

    goto/16 :goto_4

    :cond_16
    iget v8, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v11, :cond_18

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$900(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1000(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_17

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1200(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    mul-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    div-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1400(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float/2addr v9, v13

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v13}, Lcom/android/server/display/WFDUibcManager;->access$1400(Lcom/android/server/display/WFDUibcManager;)F

    move-result v13

    sub-float/2addr v13, v8

    div-float/2addr v13, v12

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    sub-float v14, v9, v13

    mul-float/2addr v12, v14

    div-float v6, v12, v8

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    iget-object v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v14, v14, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v14, v14, v0

    iget v14, v14, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float v7, v12, v14

    goto :goto_4

    :cond_17
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float v6, v8, v9

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float v7, v8, v9

    :cond_18
    :goto_4
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iput v6, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iput v7, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    nop

    :goto_5
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v8

    if-eqz v8, :cond_19

    const-string v8, "WFDUibcManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Output Pointer ID : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v12, v12, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v12, v12, v0

    iget v12, v12, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", x: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v12, v12, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v12, v12, v0

    iget v12, v12, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", y: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v12, v12, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v12, v12, v0

    iget v12, v12, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1500(Lcom/android/server/display/WFDUibcManager;)I

    move-result v8

    if-lez v8, :cond_1f

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_1d

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    cmpl-float v8, v8, v12

    if-gtz v8, :cond_1d

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_1d

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1a

    goto :goto_6

    :cond_1a
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->action:I

    if-ne v8, v10, :cond_1b

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    const-string v8, "WFDUibcManager"

    const-string v9, "In Range, Change to ACTION_DOWN"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iget v5, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    goto/16 :goto_7

    :cond_1b
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->action:I

    if-nez v8, :cond_1c

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    const-string v8, "WFDUibcManager"

    const-string v9, "Skip ACTION_DOWN, Change to ACTION_MOVE"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    goto :goto_7

    :cond_1c
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->action:I

    if-ne v8, v11, :cond_1f

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f

    const-string v4, "WFDUibcManager"

    const-string v8, "Skip ACTION_UP"

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d
    :goto_6
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->action:I

    if-eq v8, v11, :cond_1e

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    const-string v8, "WFDUibcManager"

    const-string v9, "Out of Range, Change to ACTION_UP"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iget v5, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    goto/16 :goto_8

    :cond_1e
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->action:I

    if-eq v8, v10, :cond_21

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_21

    const-string v4, "WFDUibcManager"

    const-string v8, "Out of Range, Skip Event"

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f
    :goto_7
    new-instance v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/android/server/display/WFDUibcManager$TouchPointer;-><init>(Lcom/android/server/display/WFDUibcManager$1;)V

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    iput v9, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    iput v9, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    iput v9, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v9

    if-eqz v9, :cond_20

    const-string v9, "WFDUibcManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Put Pointer ID : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", X : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", Y : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    iget v10, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_22
    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "WFDUibcManager"

    const-string v4, "Not available PointerTable"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void

    :cond_24
    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v0, v4

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x5

    if-eqz v12, :cond_26

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v15, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v15}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v15, v12, v0

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v15, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v15}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v15, v12, v0

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v12, v12, v0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iput v15, v12, Landroid/view/MotionEvent$PointerProperties;->id:I

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v12, v12, v0

    iget v12, v12, Landroid/view/MotionEvent$PointerProperties;->id:I

    if-ne v12, v5, :cond_25

    move v5, v0

    :cond_25
    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v12, v12, v0

    iput v11, v12, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v15, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v15, v15, v0

    iget v15, v15, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/display/WFDUibcManager$TouchPointer;

    iget-object v15, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v15, v15, v0

    iget v14, v12, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v15, v4, v14}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v14, v14, v0

    iget v15, v12, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    invoke-virtual {v14, v11, v15}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v14, v14, v0

    const/high16 v15, 0x3fc00000    # 1.5f

    const/16 v4, 0x8

    invoke-virtual {v14, v4, v15}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v4, v10, v14}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v0

    const v14, 0x3d23d70a    # 0.04f

    invoke-virtual {v4, v9, v14}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v0

    const/4 v14, 0x4

    const/high16 v15, 0x41700000    # 15.0f

    invoke-virtual {v4, v14, v15}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v0

    const/high16 v14, 0x41000000    # 8.0f

    invoke-virtual {v4, v13, v14}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v0

    const/high16 v13, 0x41300000    # 11.0f

    const/4 v14, 0x6

    invoke-virtual {v4, v14, v13}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v0

    const/4 v14, 0x7

    invoke-virtual {v4, v14, v13}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x0

    goto/16 :goto_9

    :cond_26
    packed-switch v3, :pswitch_data_1

    :pswitch_4
    const-string v0, "WFDUibcManager"

    const-string v4, "Not available action"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_5
    goto :goto_a

    :pswitch_6
    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-le v0, v11, :cond_29

    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lt v5, v0, :cond_27

    const-string v0, "WFDUibcManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not available index, length = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", index = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    shl-int/lit8 v0, v5, 0x8

    const/4 v4, 0x6

    or-int v3, v4, v0

    goto :goto_a

    :pswitch_7
    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-le v0, v11, :cond_29

    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lt v5, v0, :cond_28

    const-string v0, "WFDUibcManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not available index, length = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", index = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_28
    shl-int/lit8 v0, v5, 0x8

    or-int v3, v13, v0

    :cond_29
    :goto_a
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "WFDUibcManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pointer Table, Action : "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_b
    iget-object v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_2a

    const-string v4, "WFDUibcManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v10, v10, v0

    iget v10, v10, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", X : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v10, v10, v0

    iget v10, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", Y : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v10, v10, v0

    iget v10, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2a
    const-wide/16 v9, 0x0

    if-nez v3, :cond_2b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    :cond_2b
    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v22

    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/16 v25, 0x0

    const/16 v26, 0x0

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$600(Lcom/android/server/display/WFDUibcManager;)I

    move-result v27

    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x3f800000    # 1.0f

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x1002

    const/high16 v33, 0x8000000

    move-wide/from16 v17, v9

    move/from16 v21, v3

    move-object/from16 v23, v0

    move-object/from16 v24, v4

    invoke-static/range {v17 .. v33}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "WFDUibcManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InjectTouchEvent: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v0, v4, v12}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    and-int/lit16 v0, v3, 0xff

    if-eq v0, v11, :cond_2d

    and-int/lit16 v0, v3, 0xff

    const/4 v11, 0x6

    if-ne v0, v11, :cond_2f

    :cond_2d
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "WFDUibcManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Remove Pointer, Action : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v12, v3, 0xff

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", Index : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v12, v12, v5

    iget v12, v12, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v11, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v11, v11, v5

    iget v11, v11, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v0}, Lcom/android/server/display/WFDUibcManager;->access$800(Lcom/android/server/display/WFDUibcManager;)Lcom/android/server/display/WFDUibcManager$UIBCMode;

    move-result-object v0

    sget-object v11, Lcom/android/server/display/WFDUibcManager$UIBCMode;->SIDESYNC:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    if-eq v0, v11, :cond_32

    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v0}, Lcom/android/server/display/WFDUibcManager;->access$100(Lcom/android/server/display/WFDUibcManager;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "WFDUibcManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TimeGap: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mLastBroadcastTime:J

    sub-long v14, v11, v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget-wide v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mLastBroadcastTime:J

    sub-long v13, v11, v13

    const-wide/16 v15, 0x3e8

    cmp-long v0, v13, v15

    if-lez v0, :cond_32

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "WFDUibcManager"

    const-string v13, "Send intent (com.samsung.intent.action.SEC_UIBC_GET_FOCUS)"

    invoke-static {v0, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v13, "com.samsung.intent.action.SEC_UIBC_GET_FOCUS"

    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v13, "UIBC_X"

    float-to-int v14, v6

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "UIBC_Y"

    float-to-int v14, v7

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "DISPLAY_ID"

    iget-object v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v14}, Lcom/android/server/display/WFDUibcManager;->access$600(Lcom/android/server/display/WFDUibcManager;)I

    move-result v14

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v13}, Lcom/android/server/display/WFDUibcManager;->access$700(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    const-string v13, "WFDUibcManager"

    const-string v14, "Exception sendBroadcast(com.samsung.intent.action.SEC_UIBC_GET_FOCUS): "

    invoke-static {v13, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    iput-wide v11, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mLastBroadcastTime:J

    :cond_32
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->isRunning:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->getTouchEvent()Lcom/android/server/display/WFDUibcManager$TouchInput;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    invoke-virtual {p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->getKeyEvent()Lcom/android/server/display/WFDUibcManager$KeyInput;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    invoke-virtual {p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->getScrollEvent()Lcom/android/server/display/WFDUibcManager$ScrollInput;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

    invoke-virtual {p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->getRotateEvent()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->handleTouchEvent()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->handleKeyEvent()V

    :cond_3
    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->handleScrollEvent()V

    :cond_4
    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->handleRotationEvent()V

    goto :goto_0

    :cond_5
    return-void
.end method
