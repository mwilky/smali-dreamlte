.class synthetic Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$1;
.super Ljava/lang/Object;
.source "PhoneStatusBarClockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$systemui$statusbar$phone$PhoneStatusBarClockManager$POSITION:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->values()[Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$1;->$SwitchMap$com$android$systemui$statusbar$phone$PhoneStatusBarClockManager$POSITION:[I

    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$1;->$SwitchMap$com$android$systemui$statusbar$phone$PhoneStatusBarClockManager$POSITION:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->MIDDLE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$1;->$SwitchMap$com$android$systemui$statusbar$phone$PhoneStatusBarClockManager$POSITION:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->RIGHT:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$1;->$SwitchMap$com$android$systemui$statusbar$phone$PhoneStatusBarClockManager$POSITION:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->LEFT:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$1;->$SwitchMap$com$android$systemui$statusbar$phone$PhoneStatusBarClockManager$POSITION:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->NONE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    return-void
.end method
