.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$NAByAMvCuyZkA4GqyBStMFTafv4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/stackdivider/FocusedFrameView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/FocusedFrameView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$NAByAMvCuyZkA4GqyBStMFTafv4;->f$0:Lcom/android/systemui/stackdivider/FocusedFrameView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$NAByAMvCuyZkA4GqyBStMFTafv4;->f$0:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->lambda$setFocusedStack$1(Lcom/android/systemui/stackdivider/FocusedFrameView;)V

    return-void
.end method
