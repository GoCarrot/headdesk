.class public final Lio/teak/sdk/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Landroid/content/pm/PackageManager;

.field public final h:Landroid/content/Context;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/teak/sdk/d/f;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/teak/sdk/d/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/d$a;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/a/a;->h:Landroid/content/Context;

    .line 65
    const/4 v0, 0x0

    .line 68
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 69
    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :try_start_1
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 73
    :goto_0
    iput v0, p0, Lio/teak/sdk/a/a;->i:I

    .line 77
    const-string v0, "io_teak_app_id"

    invoke-interface {p2, v0}, Lio/teak/sdk/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    .line 79
    const-string v3, "io_teak_app_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    if-eqz v3, :cond_0

    const-string v4, "teak"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_0
    iput-object v0, p0, Lio/teak/sdk/a/a;->a:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lio/teak/sdk/a/a;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 87
    new-instance v0, Lio/teak/sdk/d$a;

    const-string v1, "Failed to find R.string.io_teak_app_id"

    invoke-direct {v0, v1}, Lio/teak/sdk/d$a;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v2

    :goto_1
    move-object v2, v0

    move v0, v1

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lio/teak/sdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 89
    new-instance v0, Lio/teak/sdk/d$a;

    const-string v1, "R.string.io_teak_app_id is empty."

    invoke-direct {v0, v1}, Lio/teak/sdk/d$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2
    const-string v0, "io_teak_api_key"

    invoke-interface {p2, v0}, Lio/teak/sdk/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    .line 97
    const-string v3, "io_teak_api_key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    if-eqz v3, :cond_3

    const-string v4, "teak"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 99
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_3
    iput-object v0, p0, Lio/teak/sdk/a/a;->b:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lio/teak/sdk/a/a;->b:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 105
    new-instance v0, Lio/teak/sdk/d$a;

    const-string v1, "Failed to find R.string.io_teak_api_key"

    invoke-direct {v0, v1}, Lio/teak/sdk/d$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_4
    iget-object v0, p0, Lio/teak/sdk/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 107
    new-instance v0, Lio/teak/sdk/d$a;

    const-string v1, "R.string.io_teak_api_key is empty."

    invoke-direct {v0, v1}, Lio/teak/sdk/d$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_5
    const-string v0, "io_teak_gcm_sender_id"

    invoke-interface {p2, v0}, Lio/teak/sdk/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    if-nez v0, :cond_6

    if-eqz v2, :cond_6

    .line 115
    const-string v3, "io_teak_gcm_sender_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    if-eqz v2, :cond_6

    const-string v3, "teak"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 117
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_6
    iput-object v0, p0, Lio/teak/sdk/a/a;->c:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lio/teak/sdk/a/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/teak/sdk/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_8

    .line 123
    :cond_7
    const-string v0, "Teak.Integration"

    const-string v2, "R.string.io_teak_gcm_sender_id not present or empty, push notifications disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/a/a;->e:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lio/teak/sdk/a/a;->e:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 131
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to get Bundle Id."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/a/a;->g:Landroid/content/pm/PackageManager;

    .line 136
    iget-object v0, p0, Lio/teak/sdk/a/a;->g:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_a

    .line 137
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to get Package Manager."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_a
    :try_start_2
    iget-object v0, p0, Lio/teak/sdk/a/a;->g:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lio/teak/sdk/a/a;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    iput v0, p0, Lio/teak/sdk/a/a;->d:I

    .line 154
    :goto_2
    iget-object v0, p0, Lio/teak/sdk/a/a;->g:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lio/teak/sdk/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/a/a;->f:Ljava/lang/String;

    .line 159
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/teak/sdk/service/RavenService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    const-string v1, "appId"

    iget-object v2, p0, Lio/teak/sdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 164
    :goto_3
    return-void

    .line 145
    :catch_1
    move-exception v0

    .line 146
    :try_start_4
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v2, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    iput v1, p0, Lio/teak/sdk/a/a;->d:I

    goto :goto_2

    :catchall_0
    move-exception v0

    iput v1, p0, Lio/teak/sdk/a/a;->d:I

    throw v0

    .line 164
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v0, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()Ljava/util/Map;
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
    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 168
    const-string v1, "appId"

    iget-object v2, p0, Lio/teak/sdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "apiKey"

    iget-object v2, p0, Lio/teak/sdk/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "pushSenderId"

    iget-object v2, p0, Lio/teak/sdk/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v1, "appVersion"

    iget v2, p0, Lio/teak/sdk/a/a;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v1, "bundleId"

    iget-object v2, p0, Lio/teak/sdk/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v1, "installerPackage"

    iget-object v2, p0, Lio/teak/sdk/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v1, "targetSdkVersion"

    iget v2, p0, Lio/teak/sdk/a/a;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 181
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

    invoke-virtual {p0}, Lio/teak/sdk/a/a;->a()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-static {v4}, Lio/teak/sdk/Teak;->formatJSONForLogging(Lio/teak/sdk/e/c;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
