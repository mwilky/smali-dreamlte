.class Lcom/android/keyguard/KeyguardSecPatternView$3;
.super Landroid/os/CountDownTimer;
.source "KeyguardSecPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecPatternView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final attempt:I

.field final attemptRemainingBeforeWipe:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecPatternView;JJ)V
    .locals 2

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getAddRemainingAttempt(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->attemptRemainingBeforeWipe:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->attempt:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1500(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1400(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceRecognitionListeningState()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIrisListeningState()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIBListeningState()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecPatternView;->displayDefaultSecurityMessage()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$100(Lcom/android/keyguard/KeyguardSecPatternView;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$2900(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSecPatternView;->access$2800(Lcom/android/keyguard/KeyguardSecPatternView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$2900(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSecPatternView;->access$2800(Lcom/android/keyguard/KeyguardSecPatternView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTick(J)V
    .locals 10

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    div-int/lit8 v1, v0, 0x3c

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const-string v2, ""

    iget v3, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->attemptRemainingBeforeWipe:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v3, v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$002(Lcom/android/keyguard/KeyguardSecPatternView;I)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardSecPatternView;->access$2400(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/systemui/KeyguardTextBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->attempt:I

    iget v6, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->attemptRemainingBeforeWipe:I

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/KeyguardTextBuilder;->getWarningAutoWipeMessage(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x3c

    const/4 v5, 0x1

    if-le v0, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardSecPatternView;->access$2500(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100012

    add-int/lit8 v8, v1, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v9, v1, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v3

    invoke-virtual {v6, v7, v8, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardSecPatternView;->access$2600(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100013

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v3

    invoke-virtual {v6, v7, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecPatternView;->access$2700(Lcom/android/keyguard/KeyguardSecPatternView;)V

    return-void
.end method
