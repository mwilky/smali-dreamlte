.class public Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;
.super Ljava/lang/Object;
.source "SystemUIImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/SystemUIImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImsRegState"
.end annotation


# instance fields
.field private mImsRegState:Z

.field private mVoLteRegState:Z

.field private mVoWifiRegState:Z

.field final synthetic this$0:Lcom/android/systemui/util/SystemUIImsManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/SystemUIImsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->mImsRegState:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->mVoWifiRegState:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->mVoLteRegState:Z

    return p1
.end method


# virtual methods
.method public isImsRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->mImsRegState:Z

    return v0
.end method

.method public isVoLteRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->mVoLteRegState:Z

    return v0
.end method

.method public isVoWifiRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->mVoWifiRegState:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mImsRegState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->mImsRegState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mVoLteRegState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->mVoLteRegState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mVoWifiRegState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->mVoWifiRegState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
