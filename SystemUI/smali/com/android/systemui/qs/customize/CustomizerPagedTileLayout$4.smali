.class Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;
.super Ljava/lang/Object;
.source "CustomizerPagedTileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/SecPageIndicator$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setPageIndicator(Lcom/android/systemui/qs/SecPageIndicator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewPage(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(IZ)V

    return-void
.end method
