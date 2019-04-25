.class Lcom/android/server/input/InputHelper;
.super Ljava/lang/Object;
.source "InputHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/InputHelper$SysFs;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "InputManager.ControlWakeKey"

    sput-object v0, Lcom/android/server/input/InputHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
