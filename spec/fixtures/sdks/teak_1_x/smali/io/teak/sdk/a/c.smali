.class public final Lio/teak/sdk/a/c;
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

.field private final j:Lio/teak/sdk/push/b;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/teak/sdk/c;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/teak/sdk/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-interface {p2}, Lio/teak/sdk/c;->d()Lio/teak/sdk/push/b;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/a/c;->j:Lio/teak/sdk/push/b;

    .line 56
    invoke-interface {p2}, Lio/teak/sdk/c;->c()Lio/teak/sdk/d/e;

    move-result-object v1

    .line 58
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 59
    const-string v0, "android_unknown"

    iput-object v0, p0, Lio/teak/sdk/a/c;->f:Ljava/lang/String;

    .line 66
    :goto_0
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 67
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lio/teak/sdk/a/c;->g:I

    .line 72
    invoke-interface {v1}, Lio/teak/sdk/d/e;->a()Ljava/util/Map;

    move-result-object v2

    .line 73
    const-string v0, "deviceManufacturer"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/teak/sdk/a/c;->c:Ljava/lang/String;

    .line 74
    const-string v0, "deviceModel"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/teak/sdk/a/c;->d:Ljava/lang/String;

    .line 75
    const-string v0, "deviceFallback"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/teak/sdk/a/c;->e:Ljava/lang/String;

    .line 79
    invoke-interface {v1}, Lio/teak/sdk/d/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/a/c;->b:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lio/teak/sdk/a/c;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 122
    :goto_2
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "android_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/a/c;->f:Ljava/lang/String;

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    goto :goto_1

    .line 85
    :cond_2
    new-instance v0, Lio/teak/sdk/a/c$1;

    invoke-direct {v0, p0}, Lio/teak/sdk/a/c$1;-><init>(Lio/teak/sdk/a/c;)V

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n$a;)V

    .line 101
    invoke-interface {v1}, Lio/teak/sdk/d/e;->c()V

    .line 106
    new-instance v0, Lio/teak/sdk/a/c$2;

    invoke-direct {v0, p0}, Lio/teak/sdk/a/c$2;-><init>(Lio/teak/sdk/a/c;)V

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n$a;)V

    goto :goto_2
.end method

.method static synthetic a(Lio/teak/sdk/a/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lio/teak/sdk/a/c;->k:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lio/teak/sdk/a/c;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 126
    invoke-static {}, Lio/teak/sdk/m;->a()Lio/teak/sdk/m;

    move-result-object v0

    .line 127
    iget-object v0, v0, Lio/teak/sdk/m;->b:Lio/teak/sdk/a/a;

    iget-object v0, v0, Lio/teak/sdk/a/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lio/teak/sdk/a/c;->k:Ljava/lang/String;

    .line 131
    :cond_0
    iget-object v0, p0, Lio/teak/sdk/a/c;->j:Lio/teak/sdk/push/b;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lio/teak/sdk/a/c;->j:Lio/teak/sdk/push/b;

    iget-object v1, p0, Lio/teak/sdk/a/c;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/teak/sdk/push/b;->requestPushKey(Ljava/lang/String;)V

    .line 134
    :cond_1
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
    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    iget-object v1, p0, Lio/teak/sdk/a/c;->a:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 139
    const-string v1, "pushRegistration"

    iget-object v2, p0, Lio/teak/sdk/a/c;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_0
    iget-object v1, p0, Lio/teak/sdk/a/c;->h:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 142
    const-string v1, "advertisingId"

    iget-object v2, p0, Lio/teak/sdk/a/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v1, "limitAdTracking"

    iget-boolean v2, p0, Lio/teak/sdk/a/c;->i:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_1
    const-string v1, "deviceId"

    iget-object v2, p0, Lio/teak/sdk/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v1, "deviceManufacturer"

    iget-object v2, p0, Lio/teak/sdk/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v1, "deviceModel"

    iget-object v2, p0, Lio/teak/sdk/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v1, "deviceFallback"

    iget-object v2, p0, Lio/teak/sdk/a/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v1, "platformString"

    iget-object v2, p0, Lio/teak/sdk/a/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v1, "memoryClass"

    iget v2, p0, Lio/teak/sdk/a/c;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 157
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

    invoke-virtual {p0}, Lio/teak/sdk/a/c;->b()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-static {v4}, Lio/teak/sdk/Teak;->formatJSONForLogging(Lio/teak/sdk/e/c;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
