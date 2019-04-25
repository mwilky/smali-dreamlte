.class public Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;
.super Ljava/lang/Object;
.source "SemEmergencyManagerWrapper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    return-void
.end method


# virtual methods
.method public canSetMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->canSetMode()Z

    move-result v0

    return v0
.end method

.method public isEmergencyMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isModifying()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isModifying()Z

    move-result v0

    return v0
.end method

.method public isUPSMEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    const/16 v1, 0x600

    invoke-virtual {v0, v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
