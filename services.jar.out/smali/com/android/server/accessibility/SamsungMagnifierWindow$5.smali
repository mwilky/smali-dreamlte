.class Lcom/android/server/accessibility/SamsungMagnifierWindow$5;
.super Landroid/content/BroadcastReceiver;
.source "SamsungMagnifierWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$5;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mConfigurationChangedReceiver - offsetX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$5;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$600(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v3

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " / offsetY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$5;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$600(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v3

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$5;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$600(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v1

    iget v1, v1, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1302(F)F

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$5;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$600(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v1

    iget v1, v1, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1402(F)F

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$5;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2500(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "TextSelectionChanged_For_MagnifierWindow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$5;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isShowWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "offset_x"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2602(I)I

    const-string/jumbo v1, "offset_y"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2702(I)I

    const-string/jumbo v1, "editBox_right"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1002(I)I

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$5;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2800(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$5;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2800(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSIPisShown()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2900()I

    move-result v1

    and-int/lit16 v1, v1, 0x101

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$5;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2600()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2700()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v3, v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3000(Lcom/android/server/accessibility/SamsungMagnifierWindow;FF)V

    invoke-static {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2602(I)I

    invoke-static {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2702(I)I

    invoke-static {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3102(Z)Z

    const/16 v1, -0x102

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2972(I)I

    goto :goto_0

    :cond_3
    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$5;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isShowWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2000()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "AxT9IME.isVisibleWindow"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$5;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v3, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3200(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V

    :cond_4
    :goto_0
    return-void
.end method
