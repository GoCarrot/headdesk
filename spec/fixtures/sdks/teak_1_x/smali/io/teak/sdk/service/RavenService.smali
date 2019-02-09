.class public Lio/teak/sdk/service/RavenService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "Teak.Raven.Service"

.field public static final REPORT_EXCEPTION_INTENT_ACTION:Ljava/lang/String; = "REPORT_EXCEPTION"

.field public static final SENTRY_CLIENT:Ljava/lang/String; = "teak-android/1.0.0"

.field public static final SENTRY_VERSION:I = 0x7

.field public static final SET_DSN_INTENT_ACTION:Ljava/lang/String; = "SET_DSN"

.field public static final TEAK_SENTRY_VERSION:Ljava/lang/String; = "1.0.0"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lio/teak/sdk/service/RavenService$1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/service/RavenService;->a:Ljava/util/HashMap;

    .line 97
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 81
    const-string v0, "Teak.Raven.Service"

    const-string v1, "Lifecycle - onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "Teak.Raven.Service"

    const-string v1, "Lifecycle - onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 54
    const-string v0, "appId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lio/teak/sdk/service/RavenService;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Lio/teak/sdk/service/RavenService$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lio/teak/sdk/service/RavenService$1;-><init>(Lio/teak/sdk/service/RavenService;B)V

    .line 60
    iget-object v2, p0, Lio/teak/sdk/service/RavenService;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    const-string v2, "SET_DSN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    invoke-virtual {v0, p1}, Lio/teak/sdk/service/RavenService$1;->b(Landroid/content/Intent;)V

    .line 76
    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 62
    :cond_1
    iget-object v0, p0, Lio/teak/sdk/service/RavenService;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/service/RavenService$1;

    goto :goto_0

    .line 69
    :cond_2
    const-string v2, "REPORT_EXCEPTION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v0, p1}, Lio/teak/sdk/service/RavenService$1;->a(Landroid/content/Intent;)V

    goto :goto_1
.end method
