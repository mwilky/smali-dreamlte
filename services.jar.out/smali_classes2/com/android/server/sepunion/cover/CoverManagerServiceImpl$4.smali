.class Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$4;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$4;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverTestModeChanged(IZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$4;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$1000(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    const/4 v2, 0x1

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/cover/CoverState;-><init>(ZIIIIZ)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$4;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v1, p2, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$1100(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;ZLcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$4;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$1200(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;ZZLcom/samsung/android/cover/CoverState;)V

    :cond_1
    :goto_0
    return-void
.end method
