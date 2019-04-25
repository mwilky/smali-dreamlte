.class Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$1;
.super Ljava/lang/Object;
.source "AccessibilityController.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$1;->this$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 3

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/16 v1, 0x65

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x66

    :goto_1
    invoke-static {v1}, Lcom/android/server/wm/AccessibilityController;->access$1602(I)I

    return-void
.end method
