.class Lcom/android/server/display/WFDUibcManager$TouchInput;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchInput"
.end annotation


# instance fields
.field public action:I

.field public pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

.field public pointers:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/WFDUibcManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WFDUibcManager$TouchInput;-><init>()V

    return-void
.end method
