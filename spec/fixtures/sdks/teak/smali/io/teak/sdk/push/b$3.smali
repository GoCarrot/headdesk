.class final Lio/teak/sdk/push/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/push/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lio/teak/sdk/e/a;


# direct methods
.method constructor <init>(Lio/teak/sdk/push/b;Landroid/content/Context;Lio/teak/sdk/e/a;)V
    .locals 0

    .prologue
    .line 208
    iput-object p2, p0, Lio/teak/sdk/push/b$3;->a:Landroid/content/Context;

    iput-object p3, p0, Lio/teak/sdk/push/b$3;->b:Lio/teak/sdk/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 211
    const-string v1, "io.teak.sdk.Preferences"

    monitor-enter v1

    .line 212
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/push/b$3;->a:Landroid/content/Context;

    const-string v2, "io.teak.sdk.Preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 214
    const-string v2, "io.teak.sdk.Preferences.PushStateChain"

    iget-object v3, p0, Lio/teak/sdk/push/b$3;->b:Lio/teak/sdk/e/a;

    invoke-virtual {v3}, Lio/teak/sdk/e/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 215
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 208
    invoke-direct {p0}, Lio/teak/sdk/push/b$3;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
