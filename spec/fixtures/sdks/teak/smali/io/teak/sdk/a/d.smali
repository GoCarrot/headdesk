.class public final Lio/teak/sdk/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public h:Ljava/lang/String;

.field public i:Z

.field private final j:Lio/teak/sdk/push/a;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/teak/sdk/d;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/teak/sdk/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/a/d;->k:Ljava/util/Map;

    .line 41
    invoke-interface {p2}, Lio/teak/sdk/d;->d()Lio/teak/sdk/push/a;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/a/d;->j:Lio/teak/sdk/push/a;

    .line 43
    invoke-interface {p2}, Lio/teak/sdk/d;->c()Lio/teak/sdk/d/e;

    move-result-object v1

    .line 45
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 46
    const-string v0, "android_unknown"

    iput-object v0, p0, Lio/teak/sdk/a/d;->f:Ljava/lang/String;

    .line 53
    :goto_0
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 54
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lio/teak/sdk/a/d;->g:I

    .line 59
    invoke-interface {v1}, Lio/teak/sdk/d/e;->a()Ljava/util/Map;

    move-result-object v2

    .line 60
    const-string v0, "deviceManufacturer"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/teak/sdk/a/d;->c:Ljava/lang/String;

    .line 61
    const-string v0, "deviceModel"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/teak/sdk/a/d;->d:Ljava/lang/String;

    .line 62
    const-string v0, "deviceFallback"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/teak/sdk/a/d;->e:Ljava/lang/String;

    .line 66
    invoke-interface {v1}, Lio/teak/sdk/d/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/a/d;->b:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lio/teak/sdk/a/d;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 122
    :goto_2
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "android_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/a/d;->f:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    goto :goto_1

    .line 72
    :cond_2
    new-instance v0, Lio/teak/sdk/a/d$1;

    invoke-direct {v0, p0}, Lio/teak/sdk/a/d$1;-><init>(Lio/teak/sdk/a/d;)V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o$a;)V

    .line 88
    invoke-interface {v1}, Lio/teak/sdk/d/e;->c()V

    .line 91
    new-instance v0, Lio/teak/sdk/a/d$2;

    invoke-direct {v0, p0}, Lio/teak/sdk/a/d$2;-><init>(Lio/teak/sdk/a/d;)V

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n$a;)V

    .line 102
    new-instance v0, Lio/teak/sdk/a/d$3;

    invoke-direct {v0, p0}, Lio/teak/sdk/a/d$3;-><init>(Lio/teak/sdk/a/d;)V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o$a;)V

    goto :goto_2
.end method

.method static synthetic a(Lio/teak/sdk/a/d;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/teak/sdk/a/d;->k:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lio/teak/sdk/a/d;->j:Lio/teak/sdk/push/a;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lio/teak/sdk/a/d;->j:Lio/teak/sdk/push/a;

    iget-object v1, p0, Lio/teak/sdk/a/d;->k:Ljava/util/Map;

    invoke-interface {v0, v1}, Lio/teak/sdk/push/a;->requestPushKey(Ljava/util/Map;)V

    .line 128
    :cond_0
    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 132
    iget-object v1, p0, Lio/teak/sdk/a/d;->a:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 133
    const-string v1, "pushRegistration"

    iget-object v2, p0, Lio/teak/sdk/a/d;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    iget-object v1, p0, Lio/teak/sdk/a/d;->h:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 136
    const-string v1, "advertisingId"

    iget-object v2, p0, Lio/teak/sdk/a/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v1, "limitAdTracking"

    iget-boolean v2, p0, Lio/teak/sdk/a/d;->i:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_1
    const-string v1, "deviceId"

    iget-object v2, p0, Lio/teak/sdk/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "deviceManufacturer"

    iget-object v2, p0, Lio/teak/sdk/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v1, "deviceModel"

    iget-object v2, p0, Lio/teak/sdk/a/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v1, "deviceFallback"

    iget-object v2, p0, Lio/teak/sdk/a/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v1, "platformString"

    iget-object v2, p0, Lio/teak/sdk/a/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v1, "memoryClass"

    iget v2, p0, Lio/teak/sdk/a/d;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 151
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lio/teak/sdk/e/c;

    invoke-virtual {p0}, Lio/teak/sdk/a/d;->b()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-static {v4}, Lio/teak/sdk/Teak;->formatJSONForLogging(Lio/teak/sdk/e/c;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
