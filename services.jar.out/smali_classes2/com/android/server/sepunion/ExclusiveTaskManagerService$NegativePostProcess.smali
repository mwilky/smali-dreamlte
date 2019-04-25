.class public Lcom/android/server/sepunion/ExclusiveTaskManagerService$NegativePostProcess;
.super Ljava/lang/Object;
.source "ExclusiveTaskManagerService.java"

# interfaces
.implements Lcom/android/server/sepunion/ExclusiveTaskManagerService$PostProcess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/ExclusiveTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NegativePostProcess"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$NegativePostProcess;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doPostProcess(Landroid/content/Context;I)I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "greyscale_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    iget-object v4, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$NegativePostProcess;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-static {v4}, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->access$2200(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "color_blind"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    if-nez v2, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "color_adjustment_type"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4, v1, v0}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    :cond_3
    return v0

    :cond_4
    if-eqz v2, :cond_6

    if-eqz v3, :cond_5

    const/4 v6, 0x5

    invoke-virtual {v4, v6, v1}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v4, v1, v1}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    goto :goto_3

    :cond_6
    invoke-virtual {v4, v1, v0}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    :goto_3
    return v0
.end method
