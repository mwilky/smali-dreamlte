.class public abstract Lcom/android/server/wm/StartingData;
.super Ljava/lang/Object;
.source "StartingData.java"


# instance fields
.field protected mProcessId:I

.field protected final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method protected constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/StartingData;->mProcessId:I

    iput-object p1, p0, Lcom/android/server/wm/StartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method abstract createStartingSurface(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
.end method

.method protected setProcessId(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/StartingData;->mProcessId:I

    return-void
.end method
