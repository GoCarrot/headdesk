.class public Lio/teak/sdk/wrapper/unity/TeakUnity;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Lio/teak/sdk/wrapper/TeakInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 34
    :try_start_0
    const-string v0, "com.unity3d.player.UnityPlayer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 35
    const-string v1, "UnitySendMessage"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lio/teak/sdk/wrapper/unity/TeakUnity;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 28
    .line 1071
    invoke-static {}, Lio/teak/sdk/wrapper/unity/TeakUnity;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    :try_start_0
    sget-object v0, Lio/teak/sdk/wrapper/unity/TeakUnity;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TeakGameObject"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1074
    :catch_0
    move-exception v0

    .line 1075
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static initialize()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lio/teak/sdk/wrapper/TeakInterface;

    new-instance v1, Lio/teak/sdk/wrapper/unity/TeakUnity$1;

    invoke-direct {v1}, Lio/teak/sdk/wrapper/unity/TeakUnity$1;-><init>()V

    invoke-direct {v0, v1}, Lio/teak/sdk/wrapper/TeakInterface;-><init>(Lio/teak/sdk/wrapper/a;)V

    sput-object v0, Lio/teak/sdk/wrapper/unity/TeakUnity;->b:Lio/teak/sdk/wrapper/TeakInterface;

    .line 59
    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lio/teak/sdk/wrapper/unity/TeakUnity;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readyForDeepLinks()V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lio/teak/sdk/wrapper/unity/TeakUnity;->b:Lio/teak/sdk/wrapper/TeakInterface;

    invoke-virtual {v0}, Lio/teak/sdk/wrapper/TeakInterface;->readyForDeepLinks()V

    .line 64
    return-void
.end method

.method public static registerRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "route"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 83
    :try_start_0
    new-instance v0, Lio/teak/sdk/wrapper/unity/TeakUnity$2;

    invoke-direct {v0, p0}, Lio/teak/sdk/wrapper/unity/TeakUnity$2;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2, v0}, Lio/teak/sdk/Teak;->registerDeepLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/teak/sdk/Teak$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
