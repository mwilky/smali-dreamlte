.class Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI$1;
.super Ljava/lang/Object;
.source "SamsungAccessibilityTappingUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->updateView(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;


# direct methods
.method constructor <init>(Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;)V
    .locals 0

    iput-object p1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI$1;->this$0:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI$1;->this$0:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    invoke-static {v0}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->access$200(Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI$1;->this$0:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    invoke-static {v1}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->access$000(Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI$1;->this$0:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    invoke-static {v2}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->access$100(Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
