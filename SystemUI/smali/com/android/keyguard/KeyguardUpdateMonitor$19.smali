.class Lcom/android/keyguard/KeyguardUpdateMonitor$19;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$19;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$19;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->windowType:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$9202(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    iget v0, p1, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->windowType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->windowType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$19;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/Rune;->isFingerprintSensorInDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$19;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$19;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$19;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceRecognitionListeningState()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$19;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIrisListeningState()V

    :cond_2
    return-void
.end method
