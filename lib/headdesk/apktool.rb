# frozen_string_literal: true

require 'open3'

module Headdesk
  #
  # Wrapper around using https://ibotpeaches.github.io/Apktool/
  #
  class ApkTool
    def self.apktool_jar
      "ext/apktool_#{APKTOOL_VERSION}.jar"
    end

    def self.cmd(*args)
      _stdin, stdout, stderr, wait_thr = Open3.popen3('java', '-jar', apktool_jar, *args)
      r_stdout = stdout.gets(nil)
      stdout.close
      r_stderr = stderr.gets(nil)
      stderr.close
      r_exit_code = wait_thr.value

      [r_stdout, r_stderr, r_exit_code]
    end
  end
end
