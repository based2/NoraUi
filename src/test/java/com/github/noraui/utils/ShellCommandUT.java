package com.github.noraui.utils;

import org.junit.Assert;
import org.junit.Test;

import com.github.noraui.exception.TechnicalException;

public class ShellCommandUT {

    @Test
    public void testSimpleCommand() {

        try {
            final int returnCode = new ShellCommand("whoami").run();
            Assert.assertTrue("testSimpleCommand() wrongly ended ! return code is " + returnCode, returnCode == 0 || returnCode == 1);
        } catch (final Exception e) {
            Assert.fail("Exception thrown: " + e.getMessage());
        }
    }

    @Test
    public void testSimpleCommandWithParameters() {
        try {
            final int returnCode = new ShellCommand("help", "echo").run();
            Assert.assertTrue("testSimpleCommandWithParameters() wrongly ended ! return code is " + returnCode, returnCode == 0 || returnCode == 1);
        } catch (final Exception e) {
            Assert.fail("Exception thrown: " + e.getMessage());
        }
    }

    @Test
    public void testUnknownSimpleCommand() {
        try {
            new ShellCommand("unknown").run();
            Assert.fail("testUnknownSimpleCommand() should return an exception");
        } catch (final Exception e) {
            System.out.println(e.getClass());
            Assert.assertTrue("Exception thrown after testUnknownSimpleCommand() should be an instance of 'exception.TechnicalException' !", (e instanceof TechnicalException));
        }
    }
}
