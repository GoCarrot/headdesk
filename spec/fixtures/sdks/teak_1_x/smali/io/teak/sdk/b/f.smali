.class public final Lio/teak/sdk/b/f;
.super Lio/teak/sdk/k;
.source "SourceFile"


# instance fields
.field private final e:Ljava/util/Map;
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

.field private final f:Ljava/util/Map;
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

.field private final g:Ljava/lang/String;

.field private h:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lio/teak/sdk/b/f$2;

    invoke-direct {v0}, Lio/teak/sdk/b/f$2;-><init>()V

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n$a;)V

    .line 133
    return-void
.end method

.method constructor <init>(Lio/teak/sdk/b/d;Ljava/util/Map;)V
    .locals 7
    .param p1    # Lio/teak/sdk/b/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/teak/sdk/b/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    const-string v1, "gocarrot.com"

    const-string v2, "/me/profile"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lio/teak/sdk/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/d;Lio/teak/sdk/k$e;Z)V

    .line 42
    const-string v0, "context"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "User Profile value \'context\' is not a String"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    const-string v0, "string_attributes"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-nez v0, :cond_1

    .line 46
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "User Profile value \'string_attributes\' is not a Map"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    const-string v0, "number_attributes"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-nez v0, :cond_2

    .line 49
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "User Profile value \'number_attributes\' is not a Map"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_2
    const-string v0, "string_attributes"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 55
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 57
    sget-object v3, Lio/teak/sdk/e/c;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_4
    const-string v1, "number_attributes"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 63
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    .line 65
    sget-object v4, Lio/teak/sdk/e/c;->a:Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 69
    :cond_6
    iput-object v0, p0, Lio/teak/sdk/b/f;->e:Ljava/util/Map;

    .line 70
    iput-object v1, p0, Lio/teak/sdk/b/f;->f:Ljava/util/Map;

    .line 71
    const-string v0, "context"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/teak/sdk/b/f;->g:Ljava/lang/String;

    .line 72
    return-void
.end method

.method static synthetic a(Lio/teak/sdk/b/f;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lio/teak/sdk/b/f;->h:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic a(Lio/teak/sdk/b/f;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lio/teak/sdk/b/f;->h:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lio/teak/sdk/b/e;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lio/teak/sdk/b/f$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/teak/sdk/b/f$1;-><init>(Lio/teak/sdk/b/f;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 122
    :cond_0
    return-void
.end method

.method static synthetic b(Lio/teak/sdk/b/f;)Lio/teak/sdk/k$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lio/teak/sdk/b/f;->c:Lio/teak/sdk/k$a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;D)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 90
    iget-object v0, p0, Lio/teak/sdk/b/f;->f:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lio/teak/sdk/b/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 94
    iget-object v0, p0, Lio/teak/sdk/b/f;->e:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Lio/teak/sdk/b/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lio/teak/sdk/b/f;->h:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lio/teak/sdk/b/f;->h:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lio/teak/sdk/b/f;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 81
    iget-object v0, p0, Lio/teak/sdk/b/f;->a:Ljava/util/Map;

    const-string v1, "context"

    iget-object v2, p0, Lio/teak/sdk/b/f;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lio/teak/sdk/b/f;->a:Ljava/util/Map;

    const-string v1, "string_attributes"

    iget-object v2, p0, Lio/teak/sdk/b/f;->e:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lio/teak/sdk/b/f;->a:Ljava/util/Map;

    const-string v1, "number_attributes"

    iget-object v2, p0, Lio/teak/sdk/b/f;->f:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-super {p0}, Lio/teak/sdk/k;->run()V

    .line 87
    :cond_0
    return-void
.end method
