.class synthetic Lcom/samsung/android/knox/EnterpriseDeviceManager$1;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/EnterpriseDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->values()[Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_2:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

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
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_2_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

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
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_2_2:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

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
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_3:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_4:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_4_0_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    :try_start_6
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_4_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    :try_start_7
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    :try_start_8
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    :goto_8
    :try_start_9
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_2:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_9
    :try_start_a
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_3:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    :goto_a
    :try_start_b
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_4:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    :goto_b
    :try_start_c
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_4_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v0

    :goto_c
    :try_start_d
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_5:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v0

    :goto_d
    :try_start_e
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_5_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v0

    :goto_e
    :try_start_f
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_6:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v0

    :goto_f
    :try_start_10
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_7:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v0

    :goto_10
    :try_start_11
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_7_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v0

    :goto_11
    :try_start_12
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_8:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v0

    :goto_12
    :try_start_13
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_9:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v0

    :goto_13
    :try_start_14
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_0:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v0

    :goto_14
    :try_start_15
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_15

    :catch_15
    move-exception v0

    :goto_15
    :try_start_16
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_2:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_16

    :catch_16
    move-exception v0

    :goto_16
    :try_start_17
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_2_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_17

    :catch_17
    move-exception v0

    :goto_17
    :try_start_18
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$1;->$SwitchMap$com$samsung$android$knox$EnterpriseDeviceManager$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_3:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_18

    :catch_18
    move-exception v0

    :goto_18
    return-void
.end method
