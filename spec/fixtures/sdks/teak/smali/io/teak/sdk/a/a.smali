.class public final Lio/teak/sdk/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Landroid/content/pm/PackageManager;

.field public final i:Landroid/content/Context;

.field public final j:I

.field public final k:Z

.field private l:I


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
            Lio/teak/sdk/e$a;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/a/a;->i:Landroid/content/Context;

    .line 62
    const/4 v0, 0x0

    .line 65
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 66
    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :try_start_1
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 70
    :goto_0
    iput v0, p0, Lio/teak/sdk/a/a;->j:I

    .line 74
    const-string v0, "io_teak_app_id"

    invoke-interface {p2, v0}, Lio/teak/sdk/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    .line 76
    const-string v3, "io_teak_app_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    if-eqz v3, :cond_0

    const-string v4, "teak"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_0
    iput-object v0, p0, Lio/teak/sdk/a/a;->a:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lio/teak/sdk/a/a;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Lio/teak/sdk/e$a;

    const-string v1, "Failed to find R.string.io_teak_app_id"

    invoke-direct {v0, v1}, Lio/teak/sdk/e$a;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v2

    :goto_1
    move-object v2, v0

    move v0, v1

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lio/teak/sdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 86
    new-instance v0, Lio/teak/sdk/e$a;

    const-string v1, "R.string.io_teak_app_id is empty."

    invoke-direct {v0, v1}, Lio/teak/sdk/e$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_2
    const-string v0, "io_teak_api_key"

    invoke-interface {p2, v0}, Lio/teak/sdk/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    .line 94
    const-string v3, "io_teak_api_key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    if-eqz v3, :cond_3

    const-string v4, "teak"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 96
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_3
    iput-object v0, p0, Lio/teak/sdk/a/a;->b:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lio/teak/sdk/a/a;->b:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 102
    new-instance v0, Lio/teak/sdk/e$a;

    const-string v1, "Failed to find R.string.io_teak_api_key"

    invoke-direct {v0, v1}, Lio/teak/sdk/e$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_4
    iget-object v0, p0, Lio/teak/sdk/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 104
    new-instance v0, Lio/teak/sdk/e$a;

    const-string v1, "R.string.io_teak_api_key is empty."

    invoke-direct {v0, v1}, Lio/teak/sdk/e$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_5
    const-string v0, "io_teak_gcm_sender_id"

    invoke-interface {p2, v0}, Lio/teak/sdk/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    if-nez v0, :cond_6

    if-eqz v2, :cond_6

    .line 112
    const-string v3, "io_teak_gcm_sender_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    if-eqz v3, :cond_6

    const-string v4, "teak"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 114
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_6
    if-nez v0, :cond_7

    .line 121
    const-string v0, "gcm_defaultSenderId"

    invoke-interface {p2, v0}, Lio/teak/sdk/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_7
    iput-object v0, p0, Lio/teak/sdk/a/a;->c:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lio/teak/sdk/a/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lio/teak/sdk/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_9

    .line 126
    :cond_8
    const-string v0, "Teak.Integration"

    const-string v3, "R.string.io_teak_gcm_sender_id not present or empty, push notifications disabled"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_9
    const-string v0, "io_teak_firebase_app_id"

    invoke-interface {p2, v0}, Lio/teak/sdk/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    if-nez v0, :cond_a

    if-eqz v2, :cond_a

    .line 135
    const-string v3, "io_teak_firebase_app_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    if-eqz v3, :cond_a

    const-string v4, "teak"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 137
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    :cond_a
    if-nez v0, :cond_b

    .line 144
    const-string v0, "google_app_id"

    invoke-interface {p2, v0}, Lio/teak/sdk/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_b
    iput-object v0, p0, Lio/teak/sdk/a/a;->d:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lio/teak/sdk/a/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lio/teak/sdk/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_d

    .line 149
    :cond_c
    const-string v0, "Teak.Integration"

    const-string v3, "R.string.io_teak_firebase_app_id not present or empty, push notifications disabled"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_d
    const-string v0, "io_teak_job_id"

    invoke-interface {p2, v0}, Lio/teak/sdk/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    if-nez v0, :cond_13

    if-eqz v2, :cond_13

    .line 157
    const-string v3, "io_teak_job_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    if-eqz v3, :cond_13

    const-string v4, "teak"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 159
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 163
    :goto_2
    const/high16 v0, 0x74000000

    .line 164
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_e

    .line 165
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 168
    :cond_e
    iput v0, p0, Lio/teak/sdk/a/a;->l:I

    .line 173
    const-string v0, "io_teak_enable_caching"

    invoke-interface {p2, v0}, Lio/teak/sdk/d/f;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 174
    if-nez v0, :cond_f

    if-eqz v2, :cond_f

    .line 175
    const-string v0, "io_teak_enable_caching"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 177
    :cond_f
    if-nez v0, :cond_10

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lio/teak/sdk/a/a;->k:Z

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/a/a;->f:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lio/teak/sdk/a/a;->f:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 184
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to get Bundle Id."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3

    .line 188
    :cond_11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/a/a;->h:Landroid/content/pm/PackageManager;

    .line 189
    iget-object v0, p0, Lio/teak/sdk/a/a;->h:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_12

    .line 190
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to get Package Manager."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_12
    :try_start_2
    iget-object v0, p0, Lio/teak/sdk/a/a;->h:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lio/teak/sdk/a/a;->f:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    iput v0, p0, Lio/teak/sdk/a/a;->e:I

    .line 207
    :goto_4
    iget-object v0, p0, Lio/teak/sdk/a/a;->h:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lio/teak/sdk/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/a/a;->g:Ljava/lang/String;

    .line 209
    return-void

    .line 198
    :catch_1
    move-exception v0

    .line 199
    :try_start_3
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v2, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    iput v1, p0, Lio/teak/sdk/a/a;->e:I

    goto :goto_4

    :catchall_0
    move-exception v0

    iput v1, p0, Lio/teak/sdk/a/a;->e:I

    .line 202
    throw v0

    :catch_2
    move-exception v0

    move-object v0, v2

    goto/16 :goto_1

    :cond_13
    move-object v3, v0

    goto/16 :goto_2
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
    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 213
    const-string v1, "appId"

    iget-object v2, p0, Lio/teak/sdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v1, "apiKey"

    iget-object v2, p0, Lio/teak/sdk/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v1, "gcmSenderId"

    iget-object v2, p0, Lio/teak/sdk/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, "firebaseAppId"

    iget-object v2, p0, Lio/teak/sdk/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v1, "jobId"

    iget v2, p0, Lio/teak/sdk/a/a;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v1, "appVersion"

    iget v2, p0, Lio/teak/sdk/a/a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v1, "bundleId"

    iget-object v2, p0, Lio/teak/sdk/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v1, "installerPackage"

    iget-object v2, p0, Lio/teak/sdk/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v1, "targetSdkVersion"

    iget v2, p0, Lio/teak/sdk/a/a;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 228
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

    .line 230
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
